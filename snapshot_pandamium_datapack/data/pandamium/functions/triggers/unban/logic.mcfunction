execute unless score @s staff_perms matches 2.. run tellraw @s [{"text":"[Unban]","color":"dark_red"},{"text":" You do not have permission to use this trigger!","color":"red"}]
execute unless score @s staff_perms matches 2.. run return 0

# print menu
execute if score @s unban matches 1 run function pandamium:triggers/unban/print_menu/main
execute if score @s unban matches 1 run return 0

# restrictions
execute if score @s unban matches ..-2 run tellraw @s [{"text":"[Unban]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]
execute if score @s unban matches ..-2 run return 0

# select player
execute store result storage pandamium:templates macro.id.id int 1 run scoreboard players get @s unban
function pandamium:utils/database/players/load/from_id with storage pandamium:templates macro.id
execute unless data storage pandamium.db:players selected run tellraw @s [{"text":"[Unban]","color":"dark_red"},[{"text":" Could not find a player with ID ","color":"red"},{"score":{"name":"@s","objective":"unban"}},"!"]]
execute unless data storage pandamium.db:players selected run return 0

data modify storage pandamium:templates macro.username.username set from storage pandamium.db:players selected.entry.username
function pandamium:triggers/unban/with_username with storage pandamium:templates macro.username
