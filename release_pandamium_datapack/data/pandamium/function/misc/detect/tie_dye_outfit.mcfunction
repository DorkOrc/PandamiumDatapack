data modify storage pandamium:temp nbt set from entity @s

scoreboard players set <all_dyed> variable 0
execute store success score <all_dyed> variable if data storage pandamium:temp nbt.Inventory[{Slot:100b}].tag.display.color if data storage pandamium:temp nbt.Inventory[{Slot:101b}].tag.display.color if data storage pandamium:temp nbt.Inventory[{Slot:102b}].tag.display.color if data storage pandamium:temp nbt.Inventory[{Slot:103b}].tag.display.color

execute if score <all_dyed> variable matches 1 store result score <boots_color> variable run data get storage pandamium:temp nbt.Inventory[{Slot:100b}].tag.display.color
execute if score <all_dyed> variable matches 1 store result score <leggings_color> variable run data get storage pandamium:temp nbt.Inventory[{Slot:101b}].tag.display.color
execute if score <all_dyed> variable matches 1 store result score <chestplate_color> variable run data get storage pandamium:temp nbt.Inventory[{Slot:102b}].tag.display.color
execute if score <all_dyed> variable matches 1 store result score <helmet_color> variable run data get storage pandamium:temp nbt.Inventory[{Slot:103b}].tag.display.color

execute if score <all_dyed> variable matches 1 unless score <boots_color> variable = <leggings_color> variable unless score <boots_color> variable = <chestplate_color> variable unless score <boots_color> variable = <helmet_color> variable unless score <leggings_color> variable = <chestplate_color> variable unless score <leggings_color> variable = <helmet_color> variable unless score <chestplate_color> variable = <helmet_color> variable run advancement grant @s only pandamium:minecraft/husbandry/tie_dye_outfit

advancement revoke @s only pandamium:detect/tie_dye_outfit
