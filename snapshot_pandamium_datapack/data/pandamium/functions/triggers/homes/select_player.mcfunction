execute unless score @s staff_perms matches 1.. run tellraw @s [{"text":"[Homes]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]
execute unless score @s staff_perms matches 1.. run return 0

scoreboard players reset @s selected_player

execute store result storage pandamium:templates macro.id.id int 1 run scoreboard players get @s homes
function pandamium:utils/database/players/load/from_id with storage pandamium:templates macro.id
execute unless data storage pandamium.db:players selected run tellraw @s [{"text":"[Homes]","color":"dark_red"},[{"text":" Could not find a player with ID ","color":"red"},{"score":{"name":"@s","objective":"homes"}},"!"]]
execute unless data storage pandamium.db:players selected run return 0

scoreboard players operation @s selected_player = @s homes

execute if score @s staff_perms matches 1 run function pandamium:triggers/homes/print_menu/helper/main
execute if score @s staff_perms matches 2.. run function pandamium:triggers/homes/print_menu/moderator/main
