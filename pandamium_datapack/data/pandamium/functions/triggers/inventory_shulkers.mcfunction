scoreboard players set @s temp_1 0
execute at @a if score @s selected_player = @p id run scoreboard players set @s temp_1 1

execute if score @s temp_1 matches 0 run tellraw @s [{"text":"[Inventory]","color":"dark_red"}," ",{"text":"No player selected.","color":"red"}]
execute if score @s temp_1 matches 1 at @a if score @s selected_player = @p id unless data entity @p Inventory[0] run tellraw @s [{"text":"[Inventory]","color":"dark_red"}," ",{"text":"This player has no items in their inventory.","color":"red"}]

data modify storage pandamium:see_containers inventory_shulkers set value {Slot:-1b,Items:[]}

scoreboard players add @s inventory 1
execute store result storage pandamium:see_containers inventory_shulkers.Slot byte -1 run scoreboard players get @s inventory
scoreboard players remove @s inventory 1
execute if score @s inventory matches -107 run data merge storage pandamium:see_containers {inventory_shulkers:{Slot:-106b}}

execute if score @s inventory matches -1 at @a if score @s selected_player = @p id run data modify storage pandamium:see_containers inventory_shulkers.Items set from entity @p Inventory[{Slot:0b}].tag.BlockEntityTag.Items
execute if score @s inventory matches -2 at @a if score @s selected_player = @p id run data modify storage pandamium:see_containers inventory_shulkers.Items set from entity @p Inventory[{Slot:1b}].tag.BlockEntityTag.Items
execute if score @s inventory matches -3 at @a if score @s selected_player = @p id run data modify storage pandamium:see_containers inventory_shulkers.Items set from entity @p Inventory[{Slot:2b}].tag.BlockEntityTag.Items
execute if score @s inventory matches -4 at @a if score @s selected_player = @p id run data modify storage pandamium:see_containers inventory_shulkers.Items set from entity @p Inventory[{Slot:3b}].tag.BlockEntityTag.Items
execute if score @s inventory matches -5 at @a if score @s selected_player = @p id run data modify storage pandamium:see_containers inventory_shulkers.Items set from entity @p Inventory[{Slot:4b}].tag.BlockEntityTag.Items
execute if score @s inventory matches -6 at @a if score @s selected_player = @p id run data modify storage pandamium:see_containers inventory_shulkers.Items set from entity @p Inventory[{Slot:5b}].tag.BlockEntityTag.Items
execute if score @s inventory matches -7 at @a if score @s selected_player = @p id run data modify storage pandamium:see_containers inventory_shulkers.Items set from entity @p Inventory[{Slot:6b}].tag.BlockEntityTag.Items
execute if score @s inventory matches -8 at @a if score @s selected_player = @p id run data modify storage pandamium:see_containers inventory_shulkers.Items set from entity @p Inventory[{Slot:7b}].tag.BlockEntityTag.Items
execute if score @s inventory matches -9 at @a if score @s selected_player = @p id run data modify storage pandamium:see_containers inventory_shulkers.Items set from entity @p Inventory[{Slot:8b}].tag.BlockEntityTag.Items
execute if score @s inventory matches -10 at @a if score @s selected_player = @p id run data modify storage pandamium:see_containers inventory_shulkers.Items set from entity @p Inventory[{Slot:9b}].tag.BlockEntityTag.Items
execute if score @s inventory matches -11 at @a if score @s selected_player = @p id run data modify storage pandamium:see_containers inventory_shulkers.Items set from entity @p Inventory[{Slot:10b}].tag.BlockEntityTag.Items
execute if score @s inventory matches -12 at @a if score @s selected_player = @p id run data modify storage pandamium:see_containers inventory_shulkers.Items set from entity @p Inventory[{Slot:11b}].tag.BlockEntityTag.Items
execute if score @s inventory matches -13 at @a if score @s selected_player = @p id run data modify storage pandamium:see_containers inventory_shulkers.Items set from entity @p Inventory[{Slot:12b}].tag.BlockEntityTag.Items
execute if score @s inventory matches -14 at @a if score @s selected_player = @p id run data modify storage pandamium:see_containers inventory_shulkers.Items set from entity @p Inventory[{Slot:13b}].tag.BlockEntityTag.Items
execute if score @s inventory matches -15 at @a if score @s selected_player = @p id run data modify storage pandamium:see_containers inventory_shulkers.Items set from entity @p Inventory[{Slot:14b}].tag.BlockEntityTag.Items
execute if score @s inventory matches -16 at @a if score @s selected_player = @p id run data modify storage pandamium:see_containers inventory_shulkers.Items set from entity @p Inventory[{Slot:15b}].tag.BlockEntityTag.Items
execute if score @s inventory matches -17 at @a if score @s selected_player = @p id run data modify storage pandamium:see_containers inventory_shulkers.Items set from entity @p Inventory[{Slot:16b}].tag.BlockEntityTag.Items
execute if score @s inventory matches -18 at @a if score @s selected_player = @p id run data modify storage pandamium:see_containers inventory_shulkers.Items set from entity @p Inventory[{Slot:17b}].tag.BlockEntityTag.Items
execute if score @s inventory matches -19 at @a if score @s selected_player = @p id run data modify storage pandamium:see_containers inventory_shulkers.Items set from entity @p Inventory[{Slot:18b}].tag.BlockEntityTag.Items
execute if score @s inventory matches -20 at @a if score @s selected_player = @p id run data modify storage pandamium:see_containers inventory_shulkers.Items set from entity @p Inventory[{Slot:19b}].tag.BlockEntityTag.Items
execute if score @s inventory matches -21 at @a if score @s selected_player = @p id run data modify storage pandamium:see_containers inventory_shulkers.Items set from entity @p Inventory[{Slot:20b}].tag.BlockEntityTag.Items
execute if score @s inventory matches -22 at @a if score @s selected_player = @p id run data modify storage pandamium:see_containers inventory_shulkers.Items set from entity @p Inventory[{Slot:21b}].tag.BlockEntityTag.Items
execute if score @s inventory matches -23 at @a if score @s selected_player = @p id run data modify storage pandamium:see_containers inventory_shulkers.Items set from entity @p Inventory[{Slot:22b}].tag.BlockEntityTag.Items
execute if score @s inventory matches -24 at @a if score @s selected_player = @p id run data modify storage pandamium:see_containers inventory_shulkers.Items set from entity @p Inventory[{Slot:23b}].tag.BlockEntityTag.Items
execute if score @s inventory matches -25 at @a if score @s selected_player = @p id run data modify storage pandamium:see_containers inventory_shulkers.Items set from entity @p Inventory[{Slot:24b}].tag.BlockEntityTag.Items
execute if score @s inventory matches -26 at @a if score @s selected_player = @p id run data modify storage pandamium:see_containers inventory_shulkers.Items set from entity @p Inventory[{Slot:25b}].tag.BlockEntityTag.Items
execute if score @s inventory matches -27 at @a if score @s selected_player = @p id run data modify storage pandamium:see_containers inventory_shulkers.Items set from entity @p Inventory[{Slot:26b}].tag.BlockEntityTag.Items
execute if score @s inventory matches -28 at @a if score @s selected_player = @p id run data modify storage pandamium:see_containers inventory_shulkers.Items set from entity @p Inventory[{Slot:27b}].tag.BlockEntityTag.Items
execute if score @s inventory matches -29 at @a if score @s selected_player = @p id run data modify storage pandamium:see_containers inventory_shulkers.Items set from entity @p Inventory[{Slot:28b}].tag.BlockEntityTag.Items
execute if score @s inventory matches -30 at @a if score @s selected_player = @p id run data modify storage pandamium:see_containers inventory_shulkers.Items set from entity @p Inventory[{Slot:29b}].tag.BlockEntityTag.Items
execute if score @s inventory matches -31 at @a if score @s selected_player = @p id run data modify storage pandamium:see_containers inventory_shulkers.Items set from entity @p Inventory[{Slot:30b}].tag.BlockEntityTag.Items
execute if score @s inventory matches -32 at @a if score @s selected_player = @p id run data modify storage pandamium:see_containers inventory_shulkers.Items set from entity @p Inventory[{Slot:31b}].tag.BlockEntityTag.Items
execute if score @s inventory matches -33 at @a if score @s selected_player = @p id run data modify storage pandamium:see_containers inventory_shulkers.Items set from entity @p Inventory[{Slot:32b}].tag.BlockEntityTag.Items
execute if score @s inventory matches -34 at @a if score @s selected_player = @p id run data modify storage pandamium:see_containers inventory_shulkers.Items set from entity @p Inventory[{Slot:33b}].tag.BlockEntityTag.Items
execute if score @s inventory matches -35 at @a if score @s selected_player = @p id run data modify storage pandamium:see_containers inventory_shulkers.Items set from entity @p Inventory[{Slot:34b}].tag.BlockEntityTag.Items
execute if score @s inventory matches -36 at @a if score @s selected_player = @p id run data modify storage pandamium:see_containers inventory_shulkers.Items set from entity @p Inventory[{Slot:35b}].tag.BlockEntityTag.Items
execute if score @s inventory matches -107 at @a if score @s selected_player = @p id run data modify storage pandamium:see_containers inventory_shulkers.Items set from entity @p Inventory[{Slot:-106b}].tag.BlockEntityTag.Items

execute if score @s temp_1 matches 1 unless data storage pandamium:see_containers inventory_shulkers.Items[0] run tellraw @s [{"text":"[Inventory]","color":"dark_red"}," ",{"text":"No stored items in this inventory slot.","color":"red"}]
execute if score @s temp_1 matches 1 if data storage pandamium:see_containers inventory_shulkers.Items[0] at @a if score @s selected_player = @p id run tellraw @s [{"text":"","color":"aqua"},{"text":"======== Container Contents ========","color":"gold","bold":true},{"text":"\nPlayer: ","bold":true},{"selector":"@p"}]
execute if score @s temp_1 matches 1 if data storage pandamium:see_containers inventory_shulkers.Items[0] run tellraw @s [{"text":"Inventory Slot: ","color":"aqua","bold":true},{"nbt":"inventory_shulkers.Slot","storage":"pandamium:see_containers","color":"gold","bold":false}]
execute if score @s temp_1 matches 1 if data storage pandamium:see_containers inventory_shulkers.Items[0] at @a if score @s selected_player = @p id run function pandamium:see_containers/inventory_shulkers
execute if score @s temp_1 matches 1 if data storage pandamium:see_containers inventory_shulkers.Items[0] at @a if score @s selected_player = @p id run tellraw @s [{"text":"=================================","color":"gold","bold":true}]

scoreboard players reset @s inventory
scoreboard players enable @s inventory
