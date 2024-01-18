execute unless score @s staff_perms matches 2.. run return run tellraw @s [{"text":"[Spawnpoint]","color":"dark_red"},{"text":" You do not have permission to use this trigger!","color":"red"}]

execute store success score <do_teleport> variable if score @s spawnpoint matches ..-1
execute if score @s spawnpoint matches ..-1 run scoreboard players operation @s spawnpoint *= #-1 constant

execute if score @s spawnpoint matches 1 run return run function pandamium:triggers/spawnpoint/print_menu/main

execute store result storage pandamium:templates macro.id.id int 1 run scoreboard players get @s spawnpoint
function pandamium:utils/database/players/load/from_id with storage pandamium:templates macro.id
execute unless data storage pandamium.db:players selected run return run tellraw @s [{"text":"[Spawnpoint]","color":"dark_red"},[{"text":" Could not find a player with ID ","color":"red"},{"score":{"name":"@s","objective":"spawnpoint"}},"!"]]

function pandamium:triggers/spawnpoint/with_username with storage pandamium.db:players selected.entry
