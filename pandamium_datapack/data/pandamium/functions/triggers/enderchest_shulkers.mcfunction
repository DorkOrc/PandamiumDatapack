
scoreboard players set @s temp_1 0
execute at @a if score @s selected_player = @p id run scoreboard players set @s temp_1 1

execute if score @s temp_1 matches 0 run tellraw @s [{"text":"[Ender Chest]","color":"dark_red"}," ",{"text":"No player selected.","color":"red"}]
execute if score @s temp_1 matches 1 at @a if score @s selected_player = @p id unless data entity @p EnderItems[0] run tellraw @s [{"text":"[Ender Chest]","color":"dark_red"}," ",{"text":"This player has no items in their ender chest.","color":"red"}]

data modify storage pandamium:see_containers enderchest_shulkers set value {Slot:0b,Items:[]}
scoreboard players add @s enderchest 1
execute store result storage pandamium:see_containers enderchest_shulkers.Slot byte -1 run scoreboard players get @s enderchest
scoreboard players remove @s enderchest 1
execute if score @s enderchest matches -1 at @a if score @s selected_player = @p id run data modify storage pandamium:see_containers enderchest_shulkers.Items set from entity @p EnderItems[{Slot:0b}].tag.BlockEntityTag.Items
execute if score @s enderchest matches -2 at @a if score @s selected_player = @p id run data modify storage pandamium:see_containers enderchest_shulkers.Items set from entity @p EnderItems[{Slot:1b}].tag.BlockEntityTag.Items
execute if score @s enderchest matches -3 at @a if score @s selected_player = @p id run data modify storage pandamium:see_containers enderchest_shulkers.Items set from entity @p EnderItems[{Slot:2b}].tag.BlockEntityTag.Items
execute if score @s enderchest matches -4 at @a if score @s selected_player = @p id run data modify storage pandamium:see_containers enderchest_shulkers.Items set from entity @p EnderItems[{Slot:3b}].tag.BlockEntityTag.Items
execute if score @s enderchest matches -5 at @a if score @s selected_player = @p id run data modify storage pandamium:see_containers enderchest_shulkers.Items set from entity @p EnderItems[{Slot:4b}].tag.BlockEntityTag.Items
execute if score @s enderchest matches -6 at @a if score @s selected_player = @p id run data modify storage pandamium:see_containers enderchest_shulkers.Items set from entity @p EnderItems[{Slot:5b}].tag.BlockEntityTag.Items
execute if score @s enderchest matches -7 at @a if score @s selected_player = @p id run data modify storage pandamium:see_containers enderchest_shulkers.Items set from entity @p EnderItems[{Slot:6b}].tag.BlockEntityTag.Items
execute if score @s enderchest matches -8 at @a if score @s selected_player = @p id run data modify storage pandamium:see_containers enderchest_shulkers.Items set from entity @p EnderItems[{Slot:7b}].tag.BlockEntityTag.Items
execute if score @s enderchest matches -9 at @a if score @s selected_player = @p id run data modify storage pandamium:see_containers enderchest_shulkers.Items set from entity @p EnderItems[{Slot:8b}].tag.BlockEntityTag.Items
execute if score @s enderchest matches -10 at @a if score @s selected_player = @p id run data modify storage pandamium:see_containers enderchest_shulkers.Items set from entity @p EnderItems[{Slot:9b}].tag.BlockEntityTag.Items
execute if score @s enderchest matches -11 at @a if score @s selected_player = @p id run data modify storage pandamium:see_containers enderchest_shulkers.Items set from entity @p EnderItems[{Slot:10b}].tag.BlockEntityTag.Items
execute if score @s enderchest matches -12 at @a if score @s selected_player = @p id run data modify storage pandamium:see_containers enderchest_shulkers.Items set from entity @p EnderItems[{Slot:11b}].tag.BlockEntityTag.Items
execute if score @s enderchest matches -13 at @a if score @s selected_player = @p id run data modify storage pandamium:see_containers enderchest_shulkers.Items set from entity @p EnderItems[{Slot:12b}].tag.BlockEntityTag.Items
execute if score @s enderchest matches -14 at @a if score @s selected_player = @p id run data modify storage pandamium:see_containers enderchest_shulkers.Items set from entity @p EnderItems[{Slot:13b}].tag.BlockEntityTag.Items
execute if score @s enderchest matches -15 at @a if score @s selected_player = @p id run data modify storage pandamium:see_containers enderchest_shulkers.Items set from entity @p EnderItems[{Slot:14b}].tag.BlockEntityTag.Items
execute if score @s enderchest matches -16 at @a if score @s selected_player = @p id run data modify storage pandamium:see_containers enderchest_shulkers.Items set from entity @p EnderItems[{Slot:15b}].tag.BlockEntityTag.Items
execute if score @s enderchest matches -17 at @a if score @s selected_player = @p id run data modify storage pandamium:see_containers enderchest_shulkers.Items set from entity @p EnderItems[{Slot:16b}].tag.BlockEntityTag.Items
execute if score @s enderchest matches -18 at @a if score @s selected_player = @p id run data modify storage pandamium:see_containers enderchest_shulkers.Items set from entity @p EnderItems[{Slot:17b}].tag.BlockEntityTag.Items
execute if score @s enderchest matches -19 at @a if score @s selected_player = @p id run data modify storage pandamium:see_containers enderchest_shulkers.Items set from entity @p EnderItems[{Slot:18b}].tag.BlockEntityTag.Items
execute if score @s enderchest matches -20 at @a if score @s selected_player = @p id run data modify storage pandamium:see_containers enderchest_shulkers.Items set from entity @p EnderItems[{Slot:19b}].tag.BlockEntityTag.Items
execute if score @s enderchest matches -21 at @a if score @s selected_player = @p id run data modify storage pandamium:see_containers enderchest_shulkers.Items set from entity @p EnderItems[{Slot:20b}].tag.BlockEntityTag.Items
execute if score @s enderchest matches -22 at @a if score @s selected_player = @p id run data modify storage pandamium:see_containers enderchest_shulkers.Items set from entity @p EnderItems[{Slot:21b}].tag.BlockEntityTag.Items
execute if score @s enderchest matches -23 at @a if score @s selected_player = @p id run data modify storage pandamium:see_containers enderchest_shulkers.Items set from entity @p EnderItems[{Slot:22b}].tag.BlockEntityTag.Items
execute if score @s enderchest matches -24 at @a if score @s selected_player = @p id run data modify storage pandamium:see_containers enderchest_shulkers.Items set from entity @p EnderItems[{Slot:23b}].tag.BlockEntityTag.Items
execute if score @s enderchest matches -25 at @a if score @s selected_player = @p id run data modify storage pandamium:see_containers enderchest_shulkers.Items set from entity @p EnderItems[{Slot:24b}].tag.BlockEntityTag.Items
execute if score @s enderchest matches -26 at @a if score @s selected_player = @p id run data modify storage pandamium:see_containers enderchest_shulkers.Items set from entity @p EnderItems[{Slot:25b}].tag.BlockEntityTag.Items
execute if score @s enderchest matches -27 at @a if score @s selected_player = @p id run data modify storage pandamium:see_containers enderchest_shulkers.Items set from entity @p EnderItems[{Slot:26b}].tag.BlockEntityTag.Items

execute if score @s temp_1 matches 1 unless data storage pandamium:see_containers enderchest_shulkers.Items[0] run tellraw @s [{"text":"[Ender Chest]","color":"dark_red"}," ",{"text":"No stored items in this ender chest slot.","color":"red"}]
execute if score @s temp_1 matches 1 if data storage pandamium:see_containers enderchest_shulkers.Items[0] at @a if score @s selected_player = @p id run tellraw @s [{"text":"","color":"aqua"},{"text":"======== Container Contents ========","color":"gold","bold":true},{"text":"\nPlayer: ","bold":true},{"selector":"@p"}]
execute if score @s temp_1 matches 1 if data storage pandamium:see_containers enderchest_shulkers.Items[0] run tellraw @s [{"text":"Ender Chest Slot: ","color":"aqua","bold":true},{"nbt":"enderchest_shulkers.Slot","storage":"pandamium:see_containers","color":"gold","bold":false}]
execute if score @s temp_1 matches 1 if data storage pandamium:see_containers enderchest_shulkers.Items[0] at @a if score @s selected_player = @p id run function pandamium:see_containers/enderchest_shulkers
execute if score @s temp_1 matches 1 if data storage pandamium:see_containers enderchest_shulkers.Items[0] at @a if score @s selected_player = @p id run tellraw @s [{"text":"=================================","color":"gold","bold":true}]

scoreboard players reset @s enderchest
scoreboard players enable @s enderchest
