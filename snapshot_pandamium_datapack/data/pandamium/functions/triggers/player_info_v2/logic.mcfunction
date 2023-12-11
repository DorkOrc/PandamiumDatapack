execute if score @s player_info_v2 matches 1 run return run function pandamium:triggers/player_info_v2/print_selection_menu/main

# select player
execute if score @s player_info_v2 matches -1 run scoreboard players operation @s player_info_v2 = @a[scores={staff_perms=0},distance=..200,limit=1] id
execute if score @s player_info_v2 matches -1 run return run tellraw @s [{"text":"[Player Info]","color":"dark_red"},{"text":" Could not find a non-staff player nearby!","color":"red"}]

scoreboard players operation <target_id> variable = @s player_info_v2
execute if score <target_id> variable matches ..-1 run scoreboard players operation <target_id> variable *= #-1 constant
scoreboard players operation <target_id> variable %= #1000000 constant

execute store result storage pandamium:temp arguments.id int 1 run scoreboard players get <target_id> variable
function pandamium:utils/database/players/load/from_id with storage pandamium:temp arguments
execute unless data storage pandamium.db:players selected run return run tellraw @s [{"text":"[Player Info]","color":"dark_red"},[{"text":" Could not find a player with ID ","color":"red"},{"score":{"name":"@s","objective":"player_info_v2"}},"!"]]

data modify storage pandamium:temp arguments.username set from storage pandamium.db:players selected.entry.username
function pandamium:triggers/player_info_v2/get_target_display_name with storage pandamium:temp arguments

scoreboard players operation <id_with_leading_zeroes> variable = <target_id> variable
execute store result storage pandamium:temp id_with_leading_zeroes int 1 run scoreboard players add <id_with_leading_zeroes> variable 1000000
data modify storage pandamium:temp arguments.id_with_leading_zeroes set string storage pandamium:temp id_with_leading_zeroes 1

# print inspection menu
execute if score @s player_info_v2 matches 2.. run return run function pandamium:triggers/player_info_v2/print_inspection_menu/main with storage pandamium:temp arguments

# print teleport history menu
execute if score @s player_info_v2 matches -1999999..-1000001 run return run function pandamium:triggers/player_info_v2/print_teleport_history_menu/main with storage pandamium:temp arguments

# else
tellraw @s [{"text":"[Player Info]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]
