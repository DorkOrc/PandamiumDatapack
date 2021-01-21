execute if score @s enderchest matches 1 run function pandamium:misc/print_nearest_non_staff_player

scoreboard players set @s temp_1 0
execute at @a if score @s enderchest = @p id run scoreboard players set @s temp_1 1
scoreboard players operation @s selected_player = @s enderchest

execute if score @s temp_1 matches 0 run tellraw @s [{"text":"[Ender Chest]","color":"dark_red"}," ",{"text":"No player found.","color":"red"}]
execute if score @s temp_1 matches 1 at @a if score @s enderchest = @p id unless data entity @p EnderItems[0] run tellraw @s [{"text":"[Ender Chest]","color":"dark_red"}," ",{"text":"This player has no items in their ender chest.","color":"red"}]
execute if score @s temp_1 matches 1 at @a if score @s enderchest = @p id if data entity @p EnderItems[0] run tellraw @s [{"text":"","color":"aqua"},{"text":"======== Ender Chest Items ========","color":"gold","bold":true},{"text":"\nPlayer: ","bold":true},{"selector":"@p"}]
execute if score @s temp_1 matches 1 at @a if score @s enderchest = @p id if data entity @p EnderItems[0] run function pandamium:see_containers/enderchest
execute if score @s temp_1 matches 1 at @a if score @s enderchest = @p id if data entity @p EnderItems[0] run tellraw @s [{"text":"=================================","color":"gold","bold":true}]

scoreboard players reset @s enderchest
scoreboard players enable @s enderchest
