execute unless score @s staff_perms matches 1.. run return run tellraw @s [{"text":"[Jail]","color":"dark_red"},{"text":" You do not have permission to use this trigger!","color":"red"}]

# menus
execute if score @s jail matches 1 run return run function pandamium:triggers/jail/print_menu/main
execute if score @s jail matches 1000001 run return run function pandamium:triggers/jail/search_players

# quick-jail
execute if score @s jail matches -1 run scoreboard players operation @s jail = @a[scores={staff_perms=0},distance=..200,limit=1] id
execute if score @s jail matches -1 run return run tellraw @s [{"text":"[Jail]","color":"dark_red"},{"text":" Could not find a non-staff player nearby!","color":"red"}]

# restrictions
execute unless score @s jail matches 2..999999 run return run tellraw @s [{"text":"[Jail]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]

execute if score @s jail = @s id unless score @s staff_perms matches 3.. store result score <random> variable run random value 0..3
execute if score @s jail = @s id unless score @s staff_perms matches 3.. if score <random> variable matches 0 run return run tellraw @s [{"text":"[Jail]","color":"dark_red"},{"text":" Why are you trying to jail yourself?","color":"red"}]
execute if score @s jail = @s id unless score @s staff_perms matches 3.. if score <random> variable matches 1 run return run tellraw @s [{"text":"[Jail]","color":"dark_red"},{"text":" Maybe don't do that...","color":"red"}]
execute if score @s jail = @s id unless score @s staff_perms matches 3.. if score <random> variable matches 2 run return run tellraw @s [{"text":"[Jail]","color":"dark_red"},{"text":" Hmm...","color":"red"}]
execute if score @s jail = @s id unless score @s staff_perms matches 3.. if score <random> variable matches 3 run return run tellraw @s [{"text":"[Jail]","color":"dark_red"},{"text":" You deserve freedom!","color":"red"}]

# select player
execute store result storage pandamium:templates macro.id.id int 1 run scoreboard players get @s jail
function pandamium:utils/database/players/load/from_id with storage pandamium:templates macro.id
execute unless data storage pandamium.db.players:io selected run return run tellraw @s [{"text":"[Jail]","color":"dark_red"},[{"text":" Could not find a player with ID ","color":"red"},{"score":{"name":"@s","objective":"jail"}},"!"]]

data modify storage pandamium:templates macro.username.username set from storage pandamium.db.players:io selected.entry.username
function pandamium:triggers/jail/with_username with storage pandamium:templates macro.username
