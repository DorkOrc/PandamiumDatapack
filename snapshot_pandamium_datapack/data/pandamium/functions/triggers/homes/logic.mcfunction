execute if score @s homes matches ..-1 run tellraw @s [{"text":"[Homes]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]
execute if score @s homes matches ..-1 run return 0

# print own homes
execute unless score @s staff_perms matches 1.. run scoreboard players set @s homes 1
execute if score @s homes matches 1 run function pandamium:triggers/homes/print_menu/normal/main
execute if score @s homes matches 1 run return 0

# restrictions
execute if score @s homes matches 2.. unless score @s staff_perms matches 1.. run tellraw @s [{"text":"[Homes]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]
execute if score @s homes matches 2.. unless score @s staff_perms matches 1.. run return 0
execute if score @s homes matches 1000000.. unless score @s staff_perms matches 2.. run tellraw @s [{"text":"[Homes]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]
execute if score @s homes matches 1000000.. unless score @s staff_perms matches 2.. run return 0
execute if score @s homes matches 26000000.. run tellraw @s [{"text":"[Homes]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]
execute if score @s homes matches 26000000.. run return 0

# get info
scoreboard players operation <home> variable = @s homes
execute store result storage pandamium:temp arguments.home int 1 run scoreboard players operation <home> variable /= #1000000 constant
scoreboard players operation <user_id> variable = @s homes
execute store result storage pandamium:temp arguments.id int 1 run scoreboard players operation <user_id> variable %= #1000000 constant

# select target's db entry
function pandamium:utils/database/players/load/from_id with storage pandamium:temp arguments
execute unless data storage pandamium.db:players selected run tellraw @s [{"text":"[Homes]","color":"dark_red"},[{"text":" Could not find a player with ID ","color":"red"},{"score":{"name":"<user_id>","objective":"variable"}},"!"]]
execute unless data storage pandamium.db:players selected run return 0

function pandamium:triggers/homes/get_target_display_name with storage pandamium.db:players selected.entry

# print target's homes
execute if score @s homes matches 2..999999 run function pandamium:triggers/homes/print_menu/staff/main

# teleport to target's home
execute if score @s homes matches 1000000..25999999 run function pandamium:triggers/homes/teleport_to_target_home/main
