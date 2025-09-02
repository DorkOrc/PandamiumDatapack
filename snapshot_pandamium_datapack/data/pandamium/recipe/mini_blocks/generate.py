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
	"parent": "pandamium:pandamium/mini_blocks/obtain_heavy_core_mini_block",
	"criteria": {},
	"rewards": {
		"function": "pandamium:triggers/help.mini_blocks/reset_trigger"
	}
}

for folder in os.listdir():
    if len(folder.split(".")) > 1:
        continue
    
    for file_name in os.listdir(folder):
        if file_name.split(".")[-1] != "json":
            continue
        file_name = ".".join(file_name.split(".")[:-1])

        with open(f"{folder}/{file_name}.json","r") as file:
            file_contents = json.loads(file.read())
            if "__obtainable__" in file_contents and file_contents["__obtainable__"] == False:
                continue
            if "__ignore__" in file_contents and file_contents["__ignore__"] == True:
                continue

        advancement["criteria"][f"{folder}/{file_name}"] = {"trigger":"minecraft:recipe_crafted","conditions":{"recipe_id":f"pandamium:mini_blocks/{folder}/{file_name}"}}

with open("craft_every_mini_block.json","w") as file:
    file.write(
        json.dumps(
            advancement,
            indent = "\t"
        )
        + "\n"
    )
