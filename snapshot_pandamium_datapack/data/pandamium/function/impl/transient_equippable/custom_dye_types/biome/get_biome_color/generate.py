import os
import shutil
import json

biome_set_mcfunction_file_template = """
scoreboard players operation @s custom_dye.color_transition.start_red = @s custom_dye.color_transition.current_red
scoreboard players operation @s custom_dye.color_transition.start_green = @s custom_dye.color_transition.current_green
scoreboard players operation @s custom_dye.color_transition.start_blue = @s custom_dye.color_transition.current_blue

scoreboard players set @s custom_dye.biome_id %s
scoreboard players set @s custom_dye.color_transition.target_red %s
scoreboard players set @s custom_dye.color_transition.target_green %s
scoreboard players set @s custom_dye.color_transition.target_blue %s

scoreboard players set @s custom_dye.color_transition.duration 200
scoreboard players set @s custom_dye.color_transition.time_since_change 0
"""[1:]

with open("biome_colors.json","r") as file:
    file_contents: dict = json.loads(file.read())

biome_colors: dict = {}
for biome in sorted(list(file_contents.keys())):
    if ":" not in biome:
        biome_colors["minecraft:" + biome] = file_contents[biome]
        continue
    biome_colors[biome] = file_contents[biome]
    
for biome, color in biome_colors.items():
    data: dict = {}

    if type(color) == dict:
        if "color_dec" in color:
            color = color["color_dec"]
        elif "color_hex" in color:
            color = color["color_hex"]
        elif "color_rgb" in color:
            color = color["color_rgb"][0] << 16 + color["color_rgb"][1] << 8 + color["color_rgb"][2]
        else:
            print(f"Invalid colour type for {biome}")
            continue

    if type(color) == str and color[0] == "#":
        data["color_dec"] = int(color[1:],16)
        data["color_hex"] = color.upper()
        color = data["color_dec"]
    elif type(color) == int:
        data["color_dec"] = color
        data["color_hex"] = "#"+hex(color)[2:].upper()
    else:
        print(f"Invalid colour type for {biome}")
        continue

    data["color_rgb"] = (color >> 16, (color >> 8) % 256, color % 256)
    biome_colors[biome] = data

with open("biome_colors.json","w") as file:
    file.write(
        json.dumps(
            biome_colors,
            indent = "\t"
        )
        + "\n"
    )

if os.path.isdir("tree"):
    shutil.rmtree("tree")
os.mkdir("tree")

if os.path.isdir("biomes"):
    shutil.rmtree("biomes")
os.mkdir("biomes")

for i, biome in enumerate(biome_colors.keys()):
    biome_colors[biome]["id"] = i

def remove_namespace(ID: str) -> str:
    try:
        return ID[ID.index(":")+1:]
    except ValueError:
        return ID

def generate_tree(biomes: tuple, root = False) -> None:
    if len(biomes) == 0:
        return

    if len(biomes) == 1:
        with open(f"biomes/{biomes[0].replace(':','.')}.mcfunction","w") as file:
            file.write(
                biome_set_mcfunction_file_template % (
                    biome_colors[biomes[0]]["id"],
                    *biome_colors[biomes[0]]["color_rgb"],
                )
            )
        return
    
    if 2 <= len(biomes) <= 3:
        with open(f"tree/{remove_namespace(biomes[0])}_to_{remove_namespace(biomes[-1])}.mcfunction","w") as file:
            for biome in biomes:
                file.write(
                    "execute if biome ~ ~ ~ %s unless score @s custom_dye.biome_id matches %s run function pandamium:impl/transient_equippable/custom_dye_types/biome/get_biome_color/biomes/%s\n" % (
                        biome,
                        biome_colors[biome]["id"],
                        biome.replace(":","."),
                    )
                )
                
        generate_tree((*biomes[:len(biomes)//2],))
        generate_tree((*biomes[len(biomes)//2:],))
        return

    if len(biomes) > 3:
        with open(f"tree/{remove_namespace(biomes[0])}_to_{remove_namespace(biomes[-1])}.mcfunction" if not root else "main.mcfunction","w") as file:
            file.write(
                "execute if predicate {condition:\"minecraft:location_check\",predicate:{biomes:[%s]}} run function pandamium:impl/transient_equippable/custom_dye_types/biome/get_biome_color/tree/%s_to_%s\n" % (
                    ",".join(
                        [f'"{biome}"' for biome in biomes[:len(biomes)//2]]
                    ),
                    remove_namespace(biomes[0]),
                    remove_namespace(biomes[len(biomes)//2-1]),
                )
            )

            file.write(
                "execute if predicate {condition:\"minecraft:location_check\",predicate:{biomes:[%s]}} run function pandamium:impl/transient_equippable/custom_dye_types/biome/get_biome_color/tree/%s_to_%s\n" % (
                    ",".join(
                        [f'"{biome}"' for biome in biomes[len(biomes)//2:]]
                    ),
                    remove_namespace(biomes[len(biomes)//2]),
                    remove_namespace(biomes[-1]),
                )
            )

        generate_tree((*biomes[:len(biomes)//2],))
        generate_tree((*biomes[len(biomes)//2:],))
        return

generate_tree(tuple(biome_colors.keys()),root=True)

print("Done")
