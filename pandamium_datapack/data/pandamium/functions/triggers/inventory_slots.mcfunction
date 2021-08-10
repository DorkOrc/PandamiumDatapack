tag @s add running_trigger
execute as @a if score @s id = @p[tag=running_trigger] selected_player run tag @s add selected_player
execute store success score <player_exists> temp if entity @p[tag=selected_player]

data remove storage pandamium:containers temp.SlotItem
data remove storage pandamium:containers items

scoreboard players set <slot> temp -1
scoreboard players operation <slot> temp -= @s inventory
execute if score <slot> temp matches 106 run scoreboard players set <slot> temp -106

execute if score <slot> temp matches 0 run data modify storage pandamium:containers temp.SlotItem set from entity @p[tag=selected_player] Inventory[{Slot:0b}]
execute if score <slot> temp matches 1 run data modify storage pandamium:containers temp.SlotItem set from entity @p[tag=selected_player] Inventory[{Slot:1b}]
execute if score <slot> temp matches 2 run data modify storage pandamium:containers temp.SlotItem set from entity @p[tag=selected_player] Inventory[{Slot:2b}]
execute if score <slot> temp matches 3 run data modify storage pandamium:containers temp.SlotItem set from entity @p[tag=selected_player] Inventory[{Slot:3b}]
execute if score <slot> temp matches 4 run data modify storage pandamium:containers temp.SlotItem set from entity @p[tag=selected_player] Inventory[{Slot:4b}]
execute if score <slot> temp matches 5 run data modify storage pandamium:containers temp.SlotItem set from entity @p[tag=selected_player] Inventory[{Slot:5b}]
execute if score <slot> temp matches 6 run data modify storage pandamium:containers temp.SlotItem set from entity @p[tag=selected_player] Inventory[{Slot:6b}]
execute if score <slot> temp matches 7 run data modify storage pandamium:containers temp.SlotItem set from entity @p[tag=selected_player] Inventory[{Slot:7b}]
execute if score <slot> temp matches 8 run data modify storage pandamium:containers temp.SlotItem set from entity @p[tag=selected_player] Inventory[{Slot:8b}]
execute if score <slot> temp matches 9 run data modify storage pandamium:containers temp.SlotItem set from entity @p[tag=selected_player] Inventory[{Slot:9b}]
execute if score <slot> temp matches 10 run data modify storage pandamium:containers temp.SlotItem set from entity @p[tag=selected_player] Inventory[{Slot:10b}]
execute if score <slot> temp matches 11 run data modify storage pandamium:containers temp.SlotItem set from entity @p[tag=selected_player] Inventory[{Slot:11b}]
execute if score <slot> temp matches 12 run data modify storage pandamium:containers temp.SlotItem set from entity @p[tag=selected_player] Inventory[{Slot:12b}]
execute if score <slot> temp matches 13 run data modify storage pandamium:containers temp.SlotItem set from entity @p[tag=selected_player] Inventory[{Slot:13b}]
execute if score <slot> temp matches 14 run data modify storage pandamium:containers temp.SlotItem set from entity @p[tag=selected_player] Inventory[{Slot:14b}]
execute if score <slot> temp matches 15 run data modify storage pandamium:containers temp.SlotItem set from entity @p[tag=selected_player] Inventory[{Slot:15b}]
execute if score <slot> temp matches 16 run data modify storage pandamium:containers temp.SlotItem set from entity @p[tag=selected_player] Inventory[{Slot:16b}]
execute if score <slot> temp matches 17 run data modify storage pandamium:containers temp.SlotItem set from entity @p[tag=selected_player] Inventory[{Slot:17b}]
execute if score <slot> temp matches 18 run data modify storage pandamium:containers temp.SlotItem set from entity @p[tag=selected_player] Inventory[{Slot:18b}]
execute if score <slot> temp matches 19 run data modify storage pandamium:containers temp.SlotItem set from entity @p[tag=selected_player] Inventory[{Slot:19b}]
execute if score <slot> temp matches 20 run data modify storage pandamium:containers temp.SlotItem set from entity @p[tag=selected_player] Inventory[{Slot:20b}]
execute if score <slot> temp matches 21 run data modify storage pandamium:containers temp.SlotItem set from entity @p[tag=selected_player] Inventory[{Slot:21b}]
execute if score <slot> temp matches 22 run data modify storage pandamium:containers temp.SlotItem set from entity @p[tag=selected_player] Inventory[{Slot:22b}]
execute if score <slot> temp matches 23 run data modify storage pandamium:containers temp.SlotItem set from entity @p[tag=selected_player] Inventory[{Slot:23b}]
execute if score <slot> temp matches 24 run data modify storage pandamium:containers temp.SlotItem set from entity @p[tag=selected_player] Inventory[{Slot:24b}]
execute if score <slot> temp matches 25 run data modify storage pandamium:containers temp.SlotItem set from entity @p[tag=selected_player] Inventory[{Slot:25b}]
execute if score <slot> temp matches 26 run data modify storage pandamium:containers temp.SlotItem set from entity @p[tag=selected_player] Inventory[{Slot:26b}]
execute if score <slot> temp matches 27 run data modify storage pandamium:containers temp.SlotItem set from entity @p[tag=selected_player] Inventory[{Slot:27b}]
execute if score <slot> temp matches 28 run data modify storage pandamium:containers temp.SlotItem set from entity @p[tag=selected_player] Inventory[{Slot:28b}]
execute if score <slot> temp matches 29 run data modify storage pandamium:containers temp.SlotItem set from entity @p[tag=selected_player] Inventory[{Slot:29b}]
execute if score <slot> temp matches 30 run data modify storage pandamium:containers temp.SlotItem set from entity @p[tag=selected_player] Inventory[{Slot:30b}]
execute if score <slot> temp matches 31 run data modify storage pandamium:containers temp.SlotItem set from entity @p[tag=selected_player] Inventory[{Slot:31b}]
execute if score <slot> temp matches 32 run data modify storage pandamium:containers temp.SlotItem set from entity @p[tag=selected_player] Inventory[{Slot:32b}]
execute if score <slot> temp matches 33 run data modify storage pandamium:containers temp.SlotItem set from entity @p[tag=selected_player] Inventory[{Slot:33b}]
execute if score <slot> temp matches 34 run data modify storage pandamium:containers temp.SlotItem set from entity @p[tag=selected_player] Inventory[{Slot:34b}]
execute if score <slot> temp matches 35 run data modify storage pandamium:containers temp.SlotItem set from entity @p[tag=selected_player] Inventory[{Slot:35b}]
execute if score <slot> temp matches 100 run data modify storage pandamium:containers temp.SlotItem set from entity @p[tag=selected_player] Inventory[{Slot:100b}]
execute if score <slot> temp matches 101 run data modify storage pandamium:containers temp.SlotItem set from entity @p[tag=selected_player] Inventory[{Slot:101b}]
execute if score <slot> temp matches 102 run data modify storage pandamium:containers temp.SlotItem set from entity @p[tag=selected_player] Inventory[{Slot:102b}]
execute if score <slot> temp matches 103 run data modify storage pandamium:containers temp.SlotItem set from entity @p[tag=selected_player] Inventory[{Slot:103b}]
execute if score <slot> temp matches -106 run data modify storage pandamium:containers temp.SlotItem set from entity @p[tag=selected_player] Inventory[{Slot:-106b}]

execute if data storage pandamium:containers temp.SlotItem.tag.BlockEntityTag.Items run data modify storage pandamium:containers temp.SlotItem.tag.Items set from storage pandamium:containers temp.SlotItem.tag.BlockEntityTag.Items
execute if data storage pandamium:containers temp.SlotItem.tag.Items run data modify storage pandamium:containers items set from storage pandamium:containers temp.SlotItem.tag.Items

execute store success score <has_items> temp if data storage pandamium:containers items[0]
execute store success score <is_bundle> temp if data storage pandamium:containers {temp:{SlotItem:{id:'minecraft:bundle'}}}

execute if score <player_exists> temp matches 0 run tellraw @s [{"text":"[Containers]","color":"dark_red"},{"text":" You have not selected a player or the player you have selected is offline!","color":"red"}]
execute if score <player_exists> temp matches 1 if score <has_items> temp matches 0 run tellraw @s [{"text":"[Containers]","color":"dark_red"},{"text":" No stored items in this inventory slot!","color":"red"}]
execute if score <player_exists> temp matches 1 if score <has_items> temp matches 1 run tellraw @s [{"text":"========","color":"yellow"},{"text":" Container Contents ","bold":true},"========",{"text":"\nPlayer: ","bold":true,"color":"yellow"},{"selector":"@p[tag=selected_player]"}]
execute if score <player_exists> temp matches 1 if score <has_items> temp matches 1 run tellraw @s [{"text":"Inventory Slot: ","color":"aqua","bold":true},[{"score":{"name":"<slot>","objective":"temp"},"color":"gold","bold":false},{"text":"b","color":"red"}]]
execute if score <player_exists> temp matches 1 if score <has_items> temp matches 1 if score <is_bundle> temp matches 1 run function pandamium:containers/bundle
execute if score <player_exists> temp matches 1 if score <has_items> temp matches 1 if score <is_bundle> temp matches 0 run function pandamium:containers/generic
execute if score <player_exists> temp matches 1 if score <has_items> temp matches 1 run tellraw @s {"text":"=====================================","color":"yellow"}

tag @a remove selected_player
tag @s remove running_trigger

scoreboard players reset @s inventory
scoreboard players enable @s inventory
