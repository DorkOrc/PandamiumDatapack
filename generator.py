import sys
import os
import nbtlib.literal
import requests
import json
import zipfile
import re
import nbtlib
from io import BytesIO 
from enum import Enum
from typing import Any, Iterable
import snbt

def resolve_namespaced_id(value: str) -> str:
    prefix = ""
    if value[0] == "#":
        prefix = "#"
        value = value[1:]

    parts = value.split(":")

    if len(parts) == 1:
        return prefix + "minecraft:" + value

    if len(parts) == 2:
        if parts[0] == "":
            return prefix + "minecraft:" + parts[1]
        return prefix + value

    raise ValueError

def json_dump(value: Any, *args, **kwargs) -> str:
    def custom(obj):
        if isinstance(obj, dict):
            return {kw: v for kw, v in sorted(obj.items(), key = (lambda x: x[0]))}
        raise TypeError(f'Cannot serialize object of {type(obj)}')
    return json.dumps(value,*args,ensure_ascii=False,indent="\t",separators=(",",": "),default=custom,**kwargs)+"\n"

class Color(Enum):
    BLACK = "\033[0;30m"
    RED = "\033[0;31m"
    GREEN = "\033[0;32m"
    BROWN = "\033[0;33m"
    BLUE = "\033[0;34m"
    PURPLE = "\033[0;35m"
    CYAN = "\033[0;36m"
    LIGHT_GRAY = "\033[0;37m"
    DARK_GRAY = "\033[1;30m"
    LIGHT_RED = "\033[1;31m"
    LIGHT_GREEN = "\033[1;32m"
    YELLOW = "\033[1;33m"
    LIGHT_BLUE = "\033[1;34m"
    LIGHT_PURPLE = "\033[1;35m"
    LIGHT_CYAN = "\033[1;36m"
    LIGHT_WHITE = "\033[1;37m"
    END = "\033[0m"

    def __str__(self) -> str:
        return self.value

def color(string: str, color: str|Color, replace: bool = False) -> str:
    try:
        color = str(Color[str(color).upper()])
    except KeyError:
        if color[0] != "\033":
            raise ValueError(f"{color} is not a valid color")
    if replace:
        string = re.sub(r'\x1b[^m]*m',"",string)
    else:
        if string[-4:] == "\033[0m":
            string = string[:-4]
    return color + string.replace(str(Color.END),color) + str(Color.END)

def white(value: str, replace: bool = False) -> str:  return color(value, "WHITE", replace)
def red(value: str, replace: bool = False) -> str:    return color(value, "RED", replace)
def yellow(value: str, replace: bool = False) -> str: return color(value, "YELLOW", replace)
def gray(value: str, replace: bool = False) -> str:   return color(value, "DARK_GRAY", replace)
def blue(value: str, replace: bool = False) -> str:   return color(value, "BLUE", replace)

if __name__ == "__main__":
    version_manifest: dict = json.loads(requests.get("https://piston-meta.mojang.com/mc/game/version_manifest_v2.json").content.decode(encoding="utf-8"))

    version_id: str = version_manifest["latest"]["snapshot"]
    if len(sys.argv) >= 2:
        version_id: str = sys.argv[1]
    elif input(f"Use the latest snapshot, {version_id}? [Y/n] ").upper() == "N":
        version_id: str = input("Enter the version ID: ")

    valid_version_id = False
    for version_data in version_manifest["versions"]:
        if version_data["id"] == version_id:
            valid_version_id = True
            version_jar_data_url: str = version_data["url"]

    if not valid_version_id:
        print(
            red(
                '"'
                + gray(version_id)
                + '" is not a valid version ID.'
            )
        )
        sys.exit()

    # get config files
    class Config:
        def __get_data():
            with open("generator/main.json","r") as file:
                main: dict = json.loads(file.read())

            with open("generator/mini_blocks.json","r") as file:
                mini_blocks: dict = json.loads(file.read())
            
            mini_blocks["copy_components"] = set([resolve_namespaced_id(i) for i in mini_blocks.get("copy_components",[])])

            return main, mini_blocks

        main, mini_blocks = __get_data()

    # get vanilla minecraft data
    class MCMeta:
        def __get_data():
            global version_id

            def update_dict_from_path(dictionary: dict, path: str|Iterable, value: Any) -> None:
                if type(path) == str:
                    path = path.split("/")
                if len(path) > 1:
                    return update_dict_from_path(dictionary.setdefault(path[0],dict()),path[1:],value)
                dictionary[path[0]] = value

            data: dict = {}
            data_files: dict = {}
            item_components: dict = {}
            lang: dict = {}

            with zipfile.ZipFile(
                BytesIO(requests.get(f"https://github.com/misode/mcmeta/archive/refs/tags/{version_id}-data.zip").content)
            ) as __myzip:
                for __file_data in __myzip.filelist:
                    with __myzip.open(__file_name := __file_data.filename) as __file:
                        try:
                            __file_content = __file.read().decode(encoding="utf-8")
                        except UnicodeDecodeError:
                            continue
                        try:
                            __file_content = json.loads(__file_content)
                        except json.decoder.JSONDecodeError:
                            pass
                        
                        data_files[__file_name[__file_name.index("/")+1:]] = __file_content
                        update_dict_from_path(data,__file_name.split("/")[1:],__file_content)

            try:
                lang = { "minecraft:"+k :v for k, v in json.loads(requests.get(f"https://raw.githubusercontent.com/misode/mcmeta/refs/tags/{version_id}-summary/item_components/data.json").content.decode(encoding="utf-8")).items()}
            except json.decoder.JSONDecodeError:
                print(
                    red("Failed to download item component data.")
                )
                sys.exit()

            try:
                item_components = json.loads(requests.get(f"https://raw.githubusercontent.com/misode/mcmeta/refs/tags/{version_id}-assets-json/assets/minecraft/lang/en_gb.json").content.decode(encoding="utf-8"))
            except json.decoder.JSONDecodeError:
                print(
                    red("Failed to download translations.")
                )
                sys.exit()
            
            return data, data_files, item_components, lang
    
        data, data_files, item_components, lang = __get_data()

    # set pack version
    with open("snapshot_pandamium_datapack/pack.mcmeta","r+") as file:
        file_content = json.loads(file.read())
        file_content["pack"]["pack_format"] = MCMeta.data["pack.mcmeta"]["pack"]["pack_format"]
        file.seek(0)
        file.write(json_dump(file_content))
        file.truncate()
    
    # set mini block components
    item_to_mini_block: dict = {}

    mini_blocks: dict = {}
    recipes: dict = {}

    for mini_block_item, data in Config.mini_blocks["items"].items():
        item_id = resolve_namespaced_id(data.get("item",mini_block_item))

        mini_blocks.setdefault(item_id,{})

        if item_id not in MCMeta.item_components:
            print(
                red(
                    'Invalid item ID '
                    + gray(item_id)
                    + ' for '
                    + gray(mini_block_item)
                    + ' mini block.'
                )
            )
            sys.exit()

        components = {}

        components["minecraft:custom_data"] = nbtlib. mini_blocks.setdefault(data["set_use_remainder"],{"mini_block":data["set_use_remainder"]})

        if "set_use_remainder" in data:
            components["minecraft:use_remainder"] = mini_blocks.setdefault(data["set_use_remainder"],{"mini_block":data["set_use_remainder"]})

        for component_id in set.union(Config.mini_blocks["copy_components"],set([resolve_namespaced_id(i) for i in data.get("copy_components",[])])):
            component_value = MCMeta.item_components[item_id].get(component_id)
            if component_value == None:
                continue
            components.setdefault(component_id,component_value)


        for mini_block_type in data["types"]:

            mini_block_id = mini_block_item + "/" + mini_block_type
            recipes[mini_block_item] = Config.mini_blocks["recipe"].copy()
            recipes[mini_block_item]["ingredient"] = ingredients
            recipes[mini_block_item]["result"] = mini_blocks.setdefault(mini_block_id)

