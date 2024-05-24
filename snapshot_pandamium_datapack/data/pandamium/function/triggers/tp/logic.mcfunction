execute unless score @s staff_perms matches 2.. run return run tellraw @s [{"text":"[TP]","color":"dark_red"},{"text":" You do not have permission to use this trigger!","color":"red"}]

execute if score @s jailed matches 1.. run return run tellraw @s [{"text":"[TP]","color":"dark_red"},{"text":" You cannot use this trigger in jail!","color":"red"}]

execute store success score <do_spectate> variable if score @s tp matches ..-1
execute if score @s tp matches ..-1 run scoreboard players operation @s tp *= #-1 constant

execute if score @s tp matches 1 run return run function pandamium:triggers/tp/print_menu/main

execute store result storage pandamium:templates macro.id.id int 1 run scoreboard players get @s tp
function pandamium:utils/database/players/load/from_id with storage pandamium:templates macro.id
execute unless data storage pandamium.db.players:io selected run return run tellraw @s [{"text":"[TP]","color":"dark_red"},[{"text":" Could not find a player with ID ","color":"red"},{"score":{"name":"@s","objective":"tp"}},"!"]]

function pandamium:triggers/tp/with_username with storage pandamium.db.players:io selected.entry
