execute unless score @s staff_perms matches 2.. run return run tellraw @s [{"text":"[Ban]","color":"dark_red"},{"text":" You do not have permission to use this trigger!","color":"red"}]

# print menu
execute if score @s ban matches 1 run return run function pandamium:triggers/ban/print_menu/main

# quick-ban
execute if score @s ban matches -1 run scoreboard players operation @s ban = @a[scores={staff_perms=0},distance=..200,limit=1] id
execute if score @s ban matches -1 run return run tellraw @s [{"text":"[Ban]","color":"dark_red"},{"text":" Could not find a non-staff player nearby!","color":"red"}]

# restrictions
execute store success score <confirm_ban> variable if score @s ban matches ..-2
execute if score @s ban matches ..-2 run scoreboard players operation @s ban *= #-1 constant

# select player
execute store result storage pandamium:templates macro.id.id int 1 run scoreboard players get @s ban
function pandamium:utils/database/players/load/from_id with storage pandamium:templates macro.id
execute unless data storage pandamium.db.players:io selected run return run tellraw @s [{"text":"[Ban]","color":"dark_red"},[{"text":" Could not find a player with ID ","color":"red"},{"score":{"name":"@s","objective":"ban"}},"!"]]

function pandamium:triggers/ban/with_username with storage pandamium.db.players:io selected.entry
