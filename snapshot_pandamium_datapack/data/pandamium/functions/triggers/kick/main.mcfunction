tag @s add source
scoreboard players set <returned> variable 0

# print menu
execute if score <returned> variable matches 0 if score @s kick matches 1 store success score <returned> variable run function pandamium:triggers/kick/print_menu/main

# Quick-kick
execute if score <returned> variable matches 0 if score @s kick matches -1 run scoreboard players operation @s kick = @a[scores={staff_perms=0},distance=..200,limit=1] id
execute if score <returned> variable matches 0 if score @s kick matches -1 store success score <returned> variable run tellraw @s [{"text":"[Kick]","color":"dark_red"},{"text":" Could not find a non-staff player nearby!","color":"red"}]

# Restrictions
execute if score <returned> variable matches 0 unless score @s staff_perms matches 1.. store success score <returned> variable run tellraw @s [{"text":"[Kick]","color":"dark_red"},{"text":" You do not have permission to use this trigger!","color":"red"}]
execute if score <returned> variable matches 0 if score @s kick matches ..-2 unless score @s kick matches -1060..-1001 store success score <returned> variable run tellraw @s [{"text":"[Kick]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]

# select player from session id
execute if score <returned> variable matches 0 if score @s kick matches -1060..-1001 run function pandamium:triggers/kick/select_player_from_session_id

# select player
execute if score <returned> variable matches 0 run scoreboard players set <target_exists> variable 0
execute if score <returned> variable matches 0 run scoreboard players operation <target_id> variable = @s kick
execute if score <returned> variable matches 0 as @a if score @s id = <target_id> variable store success score <target_exists> variable run tag @s add target
execute if score <returned> variable matches 0 if score <target_exists> variable matches 0 store success score <returned> variable run tellraw @s [{"text":"[Kick]","color":"dark_red"},[{"text":" Could not find a player with ID ","color":"red"},{"score":{"name":"@s","objective":"kick"}},"!"]]

# Do Kick
execute unless score @s alt_of matches 1.. run data modify storage pandamium:temp source set value '{"selector":"@s"}'
execute if score @s alt_of matches 1.. run data modify storage pandamium:temp source set value '"a staff member"'

execute if score <returned> variable matches 0 unless score @s silent_punishments matches 1 run tellraw @a [{"text":"[Kick] ","color":"dark_aqua"},{"selector":"@a[tag=target,limit=1]","color":"aqua"}," was kicked by ",{"nbt":"source","storage":"pandamium:temp","interpret":true,"color":"aqua"},"!"]
execute if score <returned> variable matches 0 if score @s silent_punishments matches 1 run tellraw @a[scores={staff_perms=1..}] [{"text":"","color":"gray"},{"text":"[Kick] ","color":"dark_gray"},{"selector":"@a[tag=target,limit=1]","color":"gray"}," was kicked by ",{"nbt":"source","storage":"pandamium:temp","interpret":true,"color":"gray"},"!"]

execute if score <returned> variable matches 0 as @a[tag=target,limit=1] run function pandamium:player/punishment/kick

#
tag @a remove target
tag @s remove source
scoreboard players reset @s kick
scoreboard players enable @s kick
