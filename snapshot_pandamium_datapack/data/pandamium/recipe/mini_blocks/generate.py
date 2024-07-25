import re
import os
import sys
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
		"description": "Craft EVERY* Mini-Block",
		"frame": "challenge",
		"show_toast": True
	},
	"parent": "pandamium:pandamium/mini_blocks/buy_mini_block",
	"criteria": {},
	"rewards": {
		"function": "pandamium:triggers/help.mini_blocks/reset_trigger"
	}
}

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
		
		if (("__obtainable__" in recipe) and (not recipe["__obtainable__"])) or (("__ignore__" in recipe) and (recipe["__ignore__"])):
			continue

		advancement["criteria"][f"{mini_block_item}/{mini_block_type}"] = {
			"trigger": "minecraft:recipe_crafted",
			"conditions": {
				"recipe_id": f"pandamium:mini_blocks/{mini_block_item}/{mini_block_type}"
			}
		}

data_pack_root_path = "\\".join(sys.path[0].split("\\")[:-4])
with open(f"{data_pack_root_path}\\data\\pandamium\\advancement\\pandamium\\mini_blocks\\craft_every_mini_block.json","w") as file:
	file.write(json.dumps(advancement,indent="\t")+"\n")
