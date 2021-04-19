tag @s add running_trigger
execute as @a if score @s id = @p[tag=running_trigger] selected_player run tag @s add selected_player
execute store success score <player_exists> variable if entity @p[tag=selected_player]

data remove storage pandamium:containers temp.SlotItem
data remove storage pandamium:containers items

scoreboard players set <slot> variable -1
scoreboard players operation <slot> variable -= @s inventory
execute if score <slot> variable matches 106 run scoreboard players set <slot> variable -106

execute if score <slot> variable matches 0 run data modify storage pandamium:containers temp.SlotItem set from entity @p[tag=selected_player] Inventory[{Slot:0b}]
execute if score <slot> variable matches 1 run data modify storage pandamium:containers temp.SlotItem set from entity @p[tag=selected_player] Inventory[{Slot:1b}]
execute if score <slot> variable matches 2 run data modify storage pandamium:containers temp.SlotItem set from entity @p[tag=selected_player] Inventory[{Slot:2b}]
execute if score <slot> variable matches 3 run data modify storage pandamium:containers temp.SlotItem set from entity @p[tag=selected_player] Inventory[{Slot:3b}]
execute if score <slot> variable matches 4 run data modify storage pandamium:containers temp.SlotItem set from entity @p[tag=selected_player] Inventory[{Slot:4b}]
execute if score <slot> variable matches 5 run data modify storage pandamium:containers temp.SlotItem set from entity @p[tag=selected_player] Inventory[{Slot:5b}]
execute if score <slot> variable matches 6 run data modify storage pandamium:containers temp.SlotItem set from entity @p[tag=selected_player] Inventory[{Slot:6b}]
execute if score <slot> variable matches 7 run data modify storage pandamium:containers temp.SlotItem set from entity @p[tag=selected_player] Inventory[{Slot:7b}]
execute if score <slot> variable matches 8 run data modify storage pandamium:containers temp.SlotItem set from entity @p[tag=selected_player] Inventory[{Slot:8b}]
execute if score <slot> variable matches 9 run data modify storage pandamium:containers temp.SlotItem set from entity @p[tag=selected_player] Inventory[{Slot:9b}]
execute if score <slot> variable matches 10 run data modify storage pandamium:containers temp.SlotItem set from entity @p[tag=selected_player] Inventory[{Slot:10b}]
execute if score <slot> variable matches 11 run data modify storage pandamium:containers temp.SlotItem set from entity @p[tag=selected_player] Inventory[{Slot:11b}]
execute if score <slot> variable matches 12 run data modify storage pandamium:containers temp.SlotItem set from entity @p[tag=selected_player] Inventory[{Slot:12b}]
execute if score <slot> variable matches 13 run data modify storage pandamium:containers temp.SlotItem set from entity @p[tag=selected_player] Inventory[{Slot:13b}]
execute if score <slot> variable matches 14 run data modify storage pandamium:containers temp.SlotItem set from entity @p[tag=selected_player] Inventory[{Slot:14b}]
execute if score <slot> variable matches 15 run data modify storage pandamium:containers temp.SlotItem set from entity @p[tag=selected_player] Inventory[{Slot:15b}]
execute if score <slot> variable matches 16 run data modify storage pandamium:containers temp.SlotItem set from entity @p[tag=selected_player] Inventory[{Slot:16b}]
execute if score <slot> variable matches 17 run data modify storage pandamium:containers temp.SlotItem set from entity @p[tag=selected_player] Inventory[{Slot:17b}]
execute if score <slot> variable matches 18 run data modify storage pandamium:containers temp.SlotItem set from entity @p[tag=selected_player] Inventory[{Slot:18b}]
execute if score <slot> variable matches 19 run data modify storage pandamium:containers temp.SlotItem set from entity @p[tag=selected_player] Inventory[{Slot:19b}]
execute if score <slot> variable matches 20 run data modify storage pandamium:containers temp.SlotItem set from entity @p[tag=selected_player] Inventory[{Slot:20b}]
execute if score <slot> variable matches 21 run data modify storage pandamium:containers temp.SlotItem set from entity @p[tag=selected_player] Inventory[{Slot:21b}]
execute if score <slot> variable matches 22 run data modify storage pandamium:containers temp.SlotItem set from entity @p[tag=selected_player] Inventory[{Slot:22b}]
execute if score <slot> variable matches 23 run data modify storage pandamium:containers temp.SlotItem set from entity @p[tag=selected_player] Inventory[{Slot:23b}]
execute if score <slot> variable matches 24 run data modify storage pandamium:containers temp.SlotItem set from entity @p[tag=selected_player] Inventory[{Slot:24b}]
execute if score <slot> variable matches 25 run data modify storage pandamium:containers temp.SlotItem set from entity @p[tag=selected_player] Inventory[{Slot:25b}]
execute if score <slot> variable matches 26 run data modify storage pandamium:containers temp.SlotItem set from entity @p[tag=selected_player] Inventory[{Slot:26b}]
execute if score <slot> variable matches 27 run data modify storage pandamium:containers temp.SlotItem set from entity @p[tag=selected_player] Inventory[{Slot:27b}]
execute if score <slot> variable matches 28 run data modify storage pandamium:containers temp.SlotItem set from entity @p[tag=selected_player] Inventory[{Slot:28b}]
execute if score <slot> variable matches 29 run data modify storage pandamium:containers temp.SlotItem set from entity @p[tag=selected_player] Inventory[{Slot:29b}]
execute if score <slot> variable matches 30 run data modify storage pandamium:containers temp.SlotItem set from entity @p[tag=selected_player] Inventory[{Slot:30b}]
execute if score <slot> variable matches 31 run data modify storage pandamium:containers temp.SlotItem set from entity @p[tag=selected_player] Inventory[{Slot:31b}]
execute if score <slot> variable matches 32 run data modify storage pandamium:containers temp.SlotItem set from entity @p[tag=selected_player] Inventory[{Slot:32b}]
execute if score <slot> variable matches 33 run data modify storage pandamium:containers temp.SlotItem set from entity @p[tag=selected_player] Inventory[{Slot:33b}]
execute if score <slot> variable matches 34 run data modify storage pandamium:containers temp.SlotItem set from entity @p[tag=selected_player] Inventory[{Slot:34b}]
execute if score <slot> variable matches 35 run data modify storage pandamium:containers temp.SlotItem set from entity @p[tag=selected_player] Inventory[{Slot:35b}]
execute if score <slot> variable matches 100 run data modify storage pandamium:containers temp.SlotItem set from entity @p[tag=selected_player] Inventory[{Slot:100b}]
execute if score <slot> variable matches 101 run data modify storage pandamium:containers temp.SlotItem set from entity @p[tag=selected_player] Inventory[{Slot:101b}]
execute if score <slot> variable matches 102 run data modify storage pandamium:containers temp.SlotItem set from entity @p[tag=selected_player] Inventory[{Slot:102b}]
execute if score <slot> variable matches 103 run data modify storage pandamium:containers temp.SlotItem set from entity @p[tag=selected_player] Inventory[{Slot:103b}]
execute if score <slot> variable matches -106 run data modify storage pandamium:containers temp.SlotItem set from entity @p[tag=selected_player] Inventory[{Slot:-106b}]

execute if data storage pandamium:containers temp.SlotItem.tag.BlockEntityTag.Items run data modify storage pandamium:containers temp.SlotItem.tag.Items set from storage pandamium:containers temp.SlotItem.tag.BlockEntityTag.Items
execute if data storage pandamium:containers temp.SlotItem.tag.Items run data modify storage pandamium:containers items set from storage pandamium:containers temp.SlotItem.tag.Items

execute store success score <has_items> variable if data storage pandamium:containers items[0]
execute store success score <is_bundle> variable if data storage pandamium:containers {temp:{SlotItem:{id:'minecraft:bundle'}}}

execute if score <player_exists> variable matches 0 run tellraw @s [{"text":"[Containers]","color":"dark_red"},{"text":" You have not selected a player or the player you have selected is offline!","color":"red"}]
execute if score <player_exists> variable matches 1 if score <has_items> variable matches 0 run tellraw @s [{"text":"[Containers]","color":"dark_red"},{"text":" No stored items in this inventory slot!","color":"red"}]
execute if score <player_exists> variable matches 1 if score <has_items> variable matches 1 run tellraw @s [{"text":"","color":"aqua"},{"text":"======== Container Contents ========","color":"gold","bold":true},{"text":"\nPlayer: ","bold":true},{"selector":"@p[tag=selected_player]"}]
execute if score <player_exists> variable matches 1 if score <has_items> variable matches 1 run tellraw @s [{"text":"Inventory Slot: ","color":"aqua","bold":true},[{"score":{"name":"<slot>","objective":"variable"},"color":"gold","bold":false},{"text":"b","color":"red"}]]
execute if score <player_exists> variable matches 1 if score <has_items> variable matches 1 if score <is_bundle> variable matches 1 run function pandamium:containers/bundle
execute if score <player_exists> variable matches 1 if score <has_items> variable matches 1 if score <is_bundle> variable matches 0 run function pandamium:containers/generic
execute if score <player_exists> variable matches 1 if score <has_items> variable matches 1 run tellraw @s {"text":"=================================","color":"gold","bold":true}

tag @a remove selected_player
tag @s remove running_trigger

scoreboard players reset @s inventory
scoreboard players enable @s inventory
