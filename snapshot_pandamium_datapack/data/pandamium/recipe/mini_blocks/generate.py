import re
import os
import json

advancement = {
	"display": {
		"icon": {
			"id": "minecraft:player_head",
			"components": {
				"minecraft:profile": {
					"id": [
						0,
						0,
						0,
						0
					],
					"properties": [
						{
							"name": "textures",
							"value": "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTM0YWViMmVhNDI0YzMwNmFhZmJkNzc2N2VmNzBiMTk3OGZhMWZiODc2OTNlMTU2YjdlMzYxYzI2OTU2YjZhZCJ9fX0="
						}
					]
				}
			}
		},
		"title": "Minicraft: Pandamium Edition",
		"description": "Craft EVERY Mini-Block",
		"frame": "challenge",
		"show_toast": True
	},
	"parent": "pandamium:pandamium/mini_blocks/buy_mini_block",
	"criteria": {},
	"rewards": {
		"function": "pandamium:triggers/help.mini_blocks/reset_trigger"
	}
}

advancement_progress_function = []

for root, dirs, files in os.walk(".", topdown=False):
	for file_name in files:
		if (file_name.split(".")[-1] != "json") or (file_name == "en_gb.json"):
			continue
		
		with open(os.path.join(root, file_name),"r") as file:
			try:
				recipe = json.loads(file.read())
				mini_block_item = recipe["result"]["components"]["minecraft:custom_data"]["pandamium"]["mini_block"]["item"]
				mini_block_type = recipe["result"]["components"]["minecraft:custom_data"]["pandamium"]["mini_block"]["type"]
			except:
				print(f"invalid recipe: in {os.path.join(root, file_name)}")
				continue
		
		if (mini_block_item != root[2:]) or (mini_block_type != file_name[:-5]):
			print(f"mismatched file name: {mini_block_item}:{mini_block_type} in {os.path.join(root, file_name)}")
			continue
		
		if ("__obtainable__" in recipe) and (not recipe["__obtainable__"]):
			continue

		advancement_progress_function.append(
			'execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",advancements:{"pandamium:pandamium/mini_blocks/craft_every_mini_block":{"%s/%s":false}}}}} run data modify storage pandamium:local functions."pandamium:triggers/help.mini_blocks/print_mini_blocks_progress".missing append value {display:\'{"text":"[","extra":[%s,"]"],"hoverEvent":{"action":"show_text","contents":"%s/%s"}}\'}' % (
				mini_block_item,
				mini_block_type,
				json.dumps({**json.loads(recipe["result"]["components"]["minecraft:item_name"])["with"][0],"bold":False},separators=(",",":")).replace("\\","\\\\").replace("'","\\'"),
				mini_block_item,
				mini_block_type,
			)
			+ "\n"
		)

		advancement["criteria"][f"{mini_block_item}/{mini_block_type}"] = {
			"trigger": "minecraft:recipe_crafted",
			"conditions": {
				"recipe_id": f"pandamium:mini_blocks/{mini_block_item}/{mini_block_type}"
			}
		}

with open("craft_every_mini_block.json","w") as file:
	file.write(json.dumps(advancement,indent="\t")+"\n")

advancement_progress_function.append(f'\nscoreboard players set <goal> variable {len(advancement_progress_function)}\n')
with open("get_mini_blocks_progress.mcfunction","w") as file:
	file.writelines(advancement_progress_function)
