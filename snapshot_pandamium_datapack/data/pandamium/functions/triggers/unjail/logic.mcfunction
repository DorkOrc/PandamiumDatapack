execute unless score @s staff_perms matches 1.. run tellraw @s [{"text":"[Unjail]","color":"dark_red"},{"text":" You do not have permission to use this trigger!","color":"red"}]
execute unless score @s staff_perms matches 1.. run return 0

# print menu
execute if score @s unjail matches 1 run function pandamium:triggers/unjail/print_menu/main
execute if score @s unjail matches 1 run return 0

# restrictions
execute if score @s unjail matches ..-2 run tellraw @s [{"text":"[Unjail]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]
execute if score @s unjail matches ..-2 run return 0

# select player
execute store result storage pandamium:templates macro.id.id int 1 run scoreboard players get @s unjail
function pandamium:utils/database/players/load/from_id with storage pandamium:templates macro.id
execute unless data storage pandamium.db.players:io selected run tellraw @s [{"text":"[Unjail]","color":"dark_red"},[{"text":" Could not find a player with ID ","color":"red"},{"score":{"name":"@s","objective":"unjail"}},"!"]]
execute unless data storage pandamium.db.players:io selected run return 0

data modify storage pandamium:templates macro.username.username set from storage pandamium.db.players:io selected.entry.username
function pandamium:triggers/unjail/with_username with storage pandamium:templates macro.username
