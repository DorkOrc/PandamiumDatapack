execute if score @s delhome matches 26000000.. run tellraw @s [{"text":"[Homes]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]
execute if score @s delhome matches 26000000.. run return 0

# get info
execute store result storage pandamium:temp arguments.home_and_user_id int 1 run scoreboard players operation <home> variable = @s delhome
execute store result storage pandamium:temp arguments.home int 1 run scoreboard players operation <home> variable /= #1000000 constant
scoreboard players operation <user_id> variable = @s delhome
execute store result storage pandamium:temp arguments.id int 1 run scoreboard players operation <user_id> variable %= #1000000 constant

# select target's db entry
function pandamium:utils/database/players/load/from_id with storage pandamium:temp arguments
execute unless data storage pandamium.db:players selected run tellraw @s [{"text":"[Homes]","color":"dark_red"},[{"text":" Could not find a player with ID ","color":"red"},{"score":{"name":"<home_id>","objective":"variable"}},"!"]]
execute unless data storage pandamium.db:players selected run return 0

function pandamium:triggers/delhome/delete_target_home/get_target_display_name with storage pandamium.db:players selected.entry

# try delete
function pandamium:triggers/delhome/delete_target_home/try_delete with storage pandamium:temp arguments
