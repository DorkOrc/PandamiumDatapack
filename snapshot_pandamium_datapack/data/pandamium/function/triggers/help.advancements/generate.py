import os
import sys
import json

def get_advancement_data(advancement_id: str, fallback: str = None, sort_requirements: bool = False) -> None:
    try:
        advancement_namespace, advancement_name = tuple(advancement_id.split(":"))
    except:
        advancement_namespace, advancement_name = "minecraft", advancement_id.split(":")[-1]

    data_pack_root_path = "\\".join(sys.path[0].split("\\")[:-5])

    if fallback == None:
        advancement_path = "\\".join([data_pack_root_path,"data",advancement_namespace,"advancement","\\".join(advancement_name.split("/")[:-1]),f'{advancement_name.split("/")[-1]}.json'])
        with open(advancement_path,"r") as file:
            advancement_data = json.loads(file.read())
    else:
        advancement_data = json.loads(fallback)
    
    advancement_requirements: list = advancement_data["requirements"] if "requirements" in advancement_data else [[criterion] for criterion in advancement_data["criteria"].keys()]
    if sort_requirements:
      advancement_requirements.sort(key=(lambda x: sorted(x)[0]))

    if advancement_id == "pandamium:pandamium/mini_blocks/craft_every_mini_block":
        for criterion in advancement_data["criteria"]:
            with open((data_pack_root_path+f"\\data\\pandamium\\recipe\\mini_blocks\\{criterion}.json"),"r") as file:
                name = json.loads(json.loads(file.read())["result"]["components"]["minecraft:item_name"])["with"][0]
                del name["bold"]
                advancement_data["criteria"][criterion]["__name__"] = name
    elif advancement_id == "pandamium:pandamium/mob_heads/obtain_every_mob_head":
        mob_head_type_to_entity_type_map = dict()

        for mob_head_entity_type in os.listdir(data_pack_root_path+"\\data\\pandamium\\loot_table\\items\\heads\\mobs\\"):
            for mob_head_type in os.listdir(data_pack_root_path+f"\\data\\pandamium\\loot_table\\items\\heads\\mobs\\{mob_head_entity_type}\\"):
                mob_head_type_to_entity_type_map[mob_head_type[:-5]] = mob_head_entity_type
        
        for criterion in advancement_data["criteria"]:
            mob_head_type = criterion
            mob_head_entity_type = mob_head_type_to_entity_type_map[mob_head_type]
            with open((data_pack_root_path+f"\\data\\pandamium\\loot_table\\items\\heads\\mobs\\{mob_head_entity_type}\\{mob_head_type}.json"),"r") as file:
                name = json.loads(file.read())["pools"][0]["entries"][0]["functions"][2]["name"][1]["text"]
                advancement_data["criteria"][criterion]["__name__"] = name
    elif advancement_id == "minecraft:adventure/adventuring_time":
        for criterion in advancement_data["criteria"]:
            advancement_data["criteria"][criterion]["__name__"] = {"translate":f"biome.minecraft.{criterion.split(':')[-1]}"}
    elif advancement_id == "minecraft:adventure/kill_all_mobs":
        for criterion in advancement_data["criteria"]:
            advancement_data["criteria"][criterion]["__name__"] = {"translate":f"entity.minecraft.{criterion.split(':')[-1]}"}
    elif advancement_id == "minecraft:husbandry/balanced_diet":
        for criterion in advancement_data["criteria"]:
            advancement_data["criteria"][criterion]["__name__"] = {"translate":f"item.minecraft.{criterion.split(':')[-1]}"}
    else:
        for criterion in advancement_data["criteria"]:
            advancement_data["criteria"][criterion]["__name__"] = criterion

    file_name = (
        "get_advancement_progress/"
        + (advancement_name.split("/")[-1]).replace('\\','\\\\').replace('"','\\"')
        + ".mcfunction"
    )

    if not os.path.exists("get_advancement_progress"):
        os.mkdir("get_advancement_progress")

    with open(file_name,"w") as file:
        file.write(f'scoreboard players set <goal> variable {len(advancement_requirements)}\n')
        file.write('data modify storage pandamium:local functions."pandamium:triggers/help.advancements/main".missing set value []\n\n')

        for criteria_required in advancement_requirements:

            predicate = (
                '{condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",advancements:{"%s":%s}}}}'
                % (
                    advancement_id,
                    json.dumps({criterion: False for criterion in criteria_required},separators=(",",":"))
                )
            )
            
            file.write(
                """execute if predicate %s run data modify storage pandamium:local functions."pandamium:triggers/help.advancements/main".missing append value {display:'{"text":"[","extra":[%s,"]"],"hoverEvent":{"action":"show_text","contents":%s},"insertion":"%s"}'}\n"""
                % (
                    predicate,
                    json.dumps(advancement_data["criteria"][criteria_required[0]]["__name__"] if (len(criteria_required) == 1) else [advancement_data["criteria"][criteria_required[0]]["__name__"]] + sum([],[[{"text":", ","color":"gray"},advancement_data["criteria"][criterion]["__name__"]] for criterion in criteria_required[1:-1]]) + [{"text":" or ","color":"gray"},advancement_data["criteria"][criteria_required[-1]]["__name__"]],separators=(",",":")).replace('\\','\\\\').replace("'","\\'"),
                    json.dumps(criteria_required[0] if (len(criteria_required) == 1) else [criteria_required[0]] + sum([],[[{"text":", ","color":"gray"},criterion] for criterion in criteria_required[1:-1]]) + [{"text":" or ","color":"gray"},criteria_required[-1]],separators=(",",":")).replace('\\','\\\\').replace("'","\\'"),
                    ("|".join(criteria_required).replace('\\','\\\\').replace('"','\\"').replace('\\','\\\\').replace("'","\\'")),
                )
            )
        file.write(
            """\nexecute store result score <total_missing> variable if data storage pandamium:local functions."pandamium:triggers/help.advancements/main".missing[]\n"""
            + """scoreboard players operation <total_completed> variable = <goal> variable\n"""
            + """scoreboard players operation <total_completed> variable -= <total_missing> variable\n"""
        )

    print(f"Generated file: {file_name}")

                    
get_advancement_data("pandamium:pandamium/mini_blocks/craft_every_mini_block")
get_advancement_data("pandamium:pandamium/mob_heads/obtain_every_mob_head")
get_advancement_data("minecraft:adventure/adventuring_time",sort_requirements=True)
get_advancement_data("minecraft:adventure/kill_all_mobs",
  fallback=r"""{"parent":"minecraft:adventure/kill_a_mob","criteria":{"minecraft:blaze":{"conditions":{"entity":[{"condition":"minecraft:entity_properties","entity":"this","predicate":{"type":"minecraft:blaze"}}]},"trigger":"minecraft:player_killed_entity"},"minecraft:bogged":{"conditions":{"entity":[{"condition":"minecraft:entity_properties","entity":"this","predicate":{"type":"minecraft:bogged"}}]},"trigger":"minecraft:player_killed_entity"},"minecraft:breeze":{"conditions":{"entity":[{"condition":"minecraft:entity_properties","entity":"this","predicate":{"type":"minecraft:breeze"}}]},"trigger":"minecraft:player_killed_entity"},"minecraft:cave_spider":{"conditions":{"entity":[{"condition":"minecraft:entity_properties","entity":"this","predicate":{"type":"minecraft:cave_spider"}}]},"trigger":"minecraft:player_killed_entity"},"minecraft:creaking_transient":{"conditions":{"entity":[{"condition":"minecraft:entity_properties","entity":"this","predicate":{"type":"minecraft:creaking_transient"}}]},"trigger":"minecraft:player_killed_entity"},"minecraft:creeper":{"conditions":{"entity":[{"condition":"minecraft:entity_properties","entity":"this","predicate":{"type":"minecraft:creeper"}}]},"trigger":"minecraft:player_killed_entity"},"minecraft:drowned":{"conditions":{"entity":[{"condition":"minecraft:entity_properties","entity":"this","predicate":{"type":"minecraft:drowned"}}]},"trigger":"minecraft:player_killed_entity"},"minecraft:elder_guardian":{"conditions":{"entity":[{"condition":"minecraft:entity_properties","entity":"this","predicate":{"type":"minecraft:elder_guardian"}}]},"trigger":"minecraft:player_killed_entity"},"minecraft:ender_dragon":{"conditions":{"entity":[{"condition":"minecraft:entity_properties","entity":"this","predicate":{"type":"minecraft:ender_dragon"}}]},"trigger":"minecraft:player_killed_entity"},"minecraft:enderman":{"conditions":{"entity":[{"condition":"minecraft:entity_properties","entity":"this","predicate":{"type":"minecraft:enderman"}}]},"trigger":"minecraft:player_killed_entity"},"minecraft:endermite":{"conditions":{"entity":[{"condition":"minecraft:entity_properties","entity":"this","predicate":{"type":"minecraft:endermite"}}]},"trigger":"minecraft:player_killed_entity"},"minecraft:evoker":{"conditions":{"entity":[{"condition":"minecraft:entity_properties","entity":"this","predicate":{"type":"minecraft:evoker"}}]},"trigger":"minecraft:player_killed_entity"},"minecraft:ghast":{"conditions":{"entity":[{"condition":"minecraft:entity_properties","entity":"this","predicate":{"type":"minecraft:ghast"}}]},"trigger":"minecraft:player_killed_entity"},"minecraft:guardian":{"conditions":{"entity":[{"condition":"minecraft:entity_properties","entity":"this","predicate":{"type":"minecraft:guardian"}}]},"trigger":"minecraft:player_killed_entity"},"minecraft:hoglin":{"conditions":{"entity":[{"condition":"minecraft:entity_properties","entity":"this","predicate":{"type":"minecraft:hoglin"}}]},"trigger":"minecraft:player_killed_entity"},"minecraft:husk":{"conditions":{"entity":[{"condition":"minecraft:entity_properties","entity":"this","predicate":{"type":"minecraft:husk"}}]},"trigger":"minecraft:player_killed_entity"},"minecraft:magma_cube":{"conditions":{"entity":[{"condition":"minecraft:entity_properties","entity":"this","predicate":{"type":"minecraft:magma_cube"}}]},"trigger":"minecraft:player_killed_entity"},"minecraft:phantom":{"conditions":{"entity":[{"condition":"minecraft:entity_properties","entity":"this","predicate":{"type":"minecraft:phantom"}}]},"trigger":"minecraft:player_killed_entity"},"minecraft:piglin":{"conditions":{"entity":[{"condition":"minecraft:entity_properties","entity":"this","predicate":{"type":"minecraft:piglin"}}]},"trigger":"minecraft:player_killed_entity"},"minecraft:piglin_brute":{"conditions":{"entity":[{"condition":"minecraft:entity_properties","entity":"this","predicate":{"type":"minecraft:piglin_brute"}}]},"trigger":"minecraft:player_killed_entity"},"minecraft:pillager":{"conditions":{"entity":[{"condition":"minecraft:entity_properties","entity":"this","predicate":{"type":"minecraft:pillager"}}]},"trigger":"minecraft:player_killed_entity"},"minecraft:ravager":{"conditions":{"entity":[{"condition":"minecraft:entity_properties","entity":"this","predicate":{"type":"minecraft:ravager"}}]},"trigger":"minecraft:player_killed_entity"},"minecraft:shulker":{"conditions":{"entity":[{"condition":"minecraft:entity_properties","entity":"this","predicate":{"type":"minecraft:shulker"}}]},"trigger":"minecraft:player_killed_entity"},"minecraft:silverfish":{"conditions":{"entity":[{"condition":"minecraft:entity_properties","entity":"this","predicate":{"type":"minecraft:silverfish"}}]},"trigger":"minecraft:player_killed_entity"},"minecraft:skeleton":{"conditions":{"entity":[{"condition":"minecraft:entity_properties","entity":"this","predicate":{"type":"minecraft:skeleton"}}]},"trigger":"minecraft:player_killed_entity"},"minecraft:slime":{"conditions":{"entity":[{"condition":"minecraft:entity_properties","entity":"this","predicate":{"type":"minecraft:slime"}}]},"trigger":"minecraft:player_killed_entity"},"minecraft:spider":{"conditions":{"entity":[{"condition":"minecraft:entity_properties","entity":"this","predicate":{"type":"minecraft:spider"}}]},"trigger":"minecraft:player_killed_entity"},"minecraft:stray":{"conditions":{"entity":[{"condition":"minecraft:entity_properties","entity":"this","predicate":{"type":"minecraft:stray"}}]},"trigger":"minecraft:player_killed_entity"},"minecraft:vex":{"conditions":{"entity":[{"condition":"minecraft:entity_properties","entity":"this","predicate":{"type":"minecraft:vex"}}]},"trigger":"minecraft:player_killed_entity"},"minecraft:vindicator":{"conditions":{"entity":[{"condition":"minecraft:entity_properties","entity":"this","predicate":{"type":"minecraft:vindicator"}}]},"trigger":"minecraft:player_killed_entity"},"minecraft:witch":{"conditions":{"entity":[{"condition":"minecraft:entity_properties","entity":"this","predicate":{"type":"minecraft:witch"}}]},"trigger":"minecraft:player_killed_entity"},"minecraft:wither":{"conditions":{"entity":[{"condition":"minecraft:entity_properties","entity":"this","predicate":{"type":"minecraft:wither"}}]},"trigger":"minecraft:player_killed_entity"},"minecraft:wither_skeleton":{"conditions":{"entity":[{"condition":"minecraft:entity_properties","entity":"this","predicate":{"type":"minecraft:wither_skeleton"}}]},"trigger":"minecraft:player_killed_entity"},"minecraft:zoglin":{"conditions":{"entity":[{"condition":"minecraft:entity_properties","entity":"this","predicate":{"type":"minecraft:zoglin"}}]},"trigger":"minecraft:player_killed_entity"},"minecraft:zombie":{"conditions":{"entity":[{"condition":"minecraft:entity_properties","entity":"this","predicate":{"type":"minecraft:zombie"}}]},"trigger":"minecraft:player_killed_entity"},"minecraft:zombie_villager":{"conditions":{"entity":[{"condition":"minecraft:entity_properties","entity":"this","predicate":{"type":"minecraft:zombie_villager"}}]},"trigger":"minecraft:player_killed_entity"},"minecraft:zombified_piglin":{"conditions":{"entity":[{"condition":"minecraft:entity_properties","entity":"this","predicate":{"type":"minecraft:zombified_piglin"}}]},"trigger":"minecraft:player_killed_entity"}},"display":{"description":{"translate":"advancements.adventure.kill_all_mobs.description"},"frame":"challenge","icon":{"count":1,"id":"minecraft:diamond_sword"},"title":{"translate":"advancements.adventure.kill_all_mobs.title"}},"requirements":[["minecraft:blaze"],["minecraft:bogged"],["minecraft:breeze"],["minecraft:cave_spider"],["minecraft:creeper"],["minecraft:drowned"],["minecraft:elder_guardian"],["minecraft:ender_dragon"],["minecraft:enderman"],["minecraft:endermite"],["minecraft:evoker"],["minecraft:ghast"],["minecraft:guardian"],["minecraft:hoglin"],["minecraft:husk"],["minecraft:magma_cube"],["minecraft:phantom"],["minecraft:piglin"],["minecraft:piglin_brute"],["minecraft:pillager"],["minecraft:ravager"],["minecraft:shulker"],["minecraft:silverfish"],["minecraft:skeleton"],["minecraft:slime"],["minecraft:spider"],["minecraft:stray"],["minecraft:vex"],["minecraft:vindicator"],["minecraft:witch"],["minecraft:wither_skeleton"],["minecraft:wither"],["minecraft:zoglin"],["minecraft:zombie_villager"],["minecraft:zombie"],["minecraft:zombified_piglin"],["minecraft:creaking_transient"]],"rewards":{"experience":100},"sends_telemetry_event":true}""",
  sort_requirements=True
)
get_advancement_data("minecraft:husbandry/balanced_diet",
  fallback=r"""{"parent": "minecraft:husbandry/plant_seed","criteria": {"apple": {"conditions": {"item": {"items": "minecraft:apple"}},"trigger": "minecraft:consume_item"},"baked_potato": {"conditions": {"item": {"items": "minecraft:baked_potato"}},"trigger": "minecraft:consume_item"},"beef": {"conditions": {"item": {"items": "minecraft:beef"}},"trigger": "minecraft:consume_item"},"beetroot": {"conditions": {"item": {"items": "minecraft:beetroot"}},"trigger": "minecraft:consume_item"},"beetroot_soup": {"conditions": {"item": {"items": "minecraft:beetroot_soup"}},"trigger": "minecraft:consume_item"},"bread": {"conditions": {"item": {"items": "minecraft:bread"}},"trigger": "minecraft:consume_item"},"carrot": {"conditions": {"item": {"items": "minecraft:carrot"}},"trigger": "minecraft:consume_item"},"chicken": {"conditions": {"item": {"items": "minecraft:chicken"}},"trigger": "minecraft:consume_item"},"chorus_fruit": {"conditions": {"item": {"items": "minecraft:chorus_fruit"}},"trigger": "minecraft:consume_item"},"cod": {"conditions": {"item": {"items": "minecraft:cod"}},"trigger": "minecraft:consume_item"},"cooked_beef": {"conditions": {"item": {"items": "minecraft:cooked_beef"}},"trigger": "minecraft:consume_item"},"cooked_chicken": {"conditions": {"item": {"items": "minecraft:cooked_chicken"}},"trigger": "minecraft:consume_item"},"cooked_cod": {"conditions": {"item": {"items": "minecraft:cooked_cod"}},"trigger": "minecraft:consume_item"},"cooked_mutton": {"conditions": {"item": {"items": "minecraft:cooked_mutton"}},"trigger": "minecraft:consume_item"},"cooked_porkchop": {"conditions": {"item": {"items": "minecraft:cooked_porkchop"}},"trigger": "minecraft:consume_item"},"cooked_rabbit": {"conditions": {"item": {"items": "minecraft:cooked_rabbit"}},"trigger": "minecraft:consume_item"},"cooked_salmon": {"conditions": {"item": {"items": "minecraft:cooked_salmon"}},"trigger": "minecraft:consume_item"},"cookie": {"conditions": {"item": {"items": "minecraft:cookie"}},"trigger": "minecraft:consume_item"},"dried_kelp": {"conditions": {"item": {"items": "minecraft:dried_kelp"}},"trigger": "minecraft:consume_item"},"enchanted_golden_apple": {"conditions": {"item": {"items": "minecraft:enchanted_golden_apple"}},"trigger": "minecraft:consume_item"},"glow_berries": {"conditions": {"item": {"items": "minecraft:glow_berries"}},"trigger": "minecraft:consume_item"},"golden_apple": {"conditions": {"item": {"items": "minecraft:golden_apple"}},"trigger": "minecraft:consume_item"},"golden_carrot": {"conditions": {"item": {"items": "minecraft:golden_carrot"}},"trigger": "minecraft:consume_item"},"honey_bottle": {"conditions": {"item": {"items": "minecraft:honey_bottle"}},"trigger": "minecraft:consume_item"},"melon_slice": {"conditions": {"item": {"items": "minecraft:melon_slice"}},"trigger": "minecraft:consume_item"},"mushroom_stew": {"conditions": {"item": {"items": "minecraft:mushroom_stew"}},"trigger": "minecraft:consume_item"},"mutton": {"conditions": {"item": {"items": "minecraft:mutton"}},"trigger": "minecraft:consume_item"},"poisonous_potato": {"conditions": {"item": {"items": "minecraft:poisonous_potato"}},"trigger": "minecraft:consume_item"},"porkchop": {"conditions": {"item": {"items": "minecraft:porkchop"}},"trigger": "minecraft:consume_item"},"potato": {"conditions": {"item": {"items": "minecraft:potato"}},"trigger": "minecraft:consume_item"},"pufferfish": {"conditions": {"item": {"items": "minecraft:pufferfish"}},"trigger": "minecraft:consume_item"},"pumpkin_pie": {"conditions": {"item": {"items": "minecraft:pumpkin_pie"}},"trigger": "minecraft:consume_item"},"rabbit": {"conditions": {"item": {"items": "minecraft:rabbit"}},"trigger": "minecraft:consume_item"},"rabbit_stew": {"conditions": {"item": {"items": "minecraft:rabbit_stew"}},"trigger": "minecraft:consume_item"},"rotten_flesh": {"conditions": {"item": {"items": "minecraft:rotten_flesh"}},"trigger": "minecraft:consume_item"},"salmon": {"conditions": {"item": {"items": "minecraft:salmon"}},"trigger": "minecraft:consume_item"},"spider_eye": {"conditions": {"item": {"items": "minecraft:spider_eye"}},"trigger": "minecraft:consume_item"},"suspicious_stew": {"conditions": {"item": {"items": "minecraft:suspicious_stew"}},"trigger": "minecraft:consume_item"},"sweet_berries": {"conditions": {"item": {"items": "minecraft:sweet_berries"}},"trigger": "minecraft:consume_item"},"tropical_fish": {"conditions": {"item": {"items": "minecraft:tropical_fish"}},"trigger": "minecraft:consume_item"}},"display": {"description": {"translate": "advancements.husbandry.balanced_diet.description"},"frame": "challenge","icon": {"count": 1,"id": "minecraft:apple"},"title": {"translate": "advancements.husbandry.balanced_diet.title"}},"requirements": [["apple"],["mushroom_stew"],["bread"],["porkchop"],["cooked_porkchop"],["golden_apple"],["enchanted_golden_apple"],["cod"],["salmon"],["tropical_fish"],["pufferfish"],["cooked_cod"],["cooked_salmon"],["cookie"],["melon_slice"],["beef"],["cooked_beef"],["chicken"],["cooked_chicken"],["rotten_flesh"],["spider_eye"],["carrot"],["potato"],["baked_potato"],["poisonous_potato"],["golden_carrot"],["pumpkin_pie"],["rabbit"],["cooked_rabbit"],["rabbit_stew"],["mutton"],["cooked_mutton"],["chorus_fruit"],["beetroot"],["beetroot_soup"],["dried_kelp"],["suspicious_stew"],["sweet_berries"],["honey_bottle"],["glow_berries"]],"rewards": {"experience": 100},"sends_telemetry_event": true}"""
)
