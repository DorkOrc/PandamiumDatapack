execute unless score @s staff_perms matches 2.. run tellraw @s [{"text":"[Homes]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]
execute unless score @s staff_perms matches 2.. run return 0

execute store result storage pandamium:templates macro.id.id int 1 run scoreboard players get @s selected_player
function pandamium:utils/database/players/load/from_id with storage pandamium:templates macro.id
execute unless data storage pandamium.db:players selected run tellraw @s [{"text":"[Homes]","color":"dark_red"},{"text":" You have not selected a player or the player you have selected is offline!","color":"red"}]
execute unless data storage pandamium.db:players selected run return 0

scoreboard players operation <home> variable = @s homes
execute store result storage pandamium:templates macro.home.home int 1 run scoreboard players operation <home> variable *= #-1 constant
function pandamium:triggers/homes/teleport_to_target_home/get_teleport_destination with storage pandamium:templates macro.home

gamemode spectator
function pandamium:utils/teleport/to_scores
