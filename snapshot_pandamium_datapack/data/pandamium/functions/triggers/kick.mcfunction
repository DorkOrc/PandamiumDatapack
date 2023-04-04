# run AT @s

tag @s add source
scoreboard players set <returned> variable 0

execute if score @s kick matches ..-2 store success score <returned> variable run tellraw @s [{"text":"[Kick]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]

# Print Nearest Non-Staff Player
execute if score <returned> variable matches 0 if score @s kick matches 1 store success score <returned> variable run function pandamium:misc/print_nearest_non_staff_player

# Quick-kick
execute if score <returned> variable matches 0 if score @s kick matches -1 run scoreboard players operation @s kick = @p[scores={staff_perms=0},distance=..200] id
execute if score <returned> variable matches 0 if score @s kick matches -1 store success score <returned> variable run tellraw @s [{"text":"[Kick]","color":"dark_red"},{"text":" Could not find a non-staff player nearby!","color":"red"}]

# Restrictions
execute if score <returned> variable matches 0 unless score @s staff_perms matches 1.. store success score <returned> variable run tellraw @s [{"text":"[Kick]","color":"dark_red"},{"text":" You do not have permission to use this trigger!","color":"red"}]

execute if score <returned> variable matches 0 run scoreboard players set <target_exists> variable 0
execute if score <returned> variable matches 0 run scoreboard players operation <target_id> variable = @s kick
execute if score <returned> variable matches 0 as @a if score @s id = <target_id> variable store success score <target_exists> variable run tag @s add target
execute if score <returned> variable matches 0 if score <target_exists> variable matches 0 store success score <returned> variable run tellraw @s [{"text":"[Kick]","color":"dark_red"},[{"text":" Could not find a player with ID ","color":"red"},{"score":{"name":"@s","objective":"kick"}},"!"]]

# Do Kick
execute unless score @s is_staff_alt matches 1 run data modify storage pandamium:temp source set value '{"selector":"@s"}'
execute if score @s is_staff_alt matches 1 run data modify storage pandamium:temp source set value '"a staff member"'

execute if score <returned> variable matches 0 unless score @s silent_punishments matches 1 run tellraw @a [{"text":"[Kick] ","color":"dark_aqua"},{"selector":"@p[tag=target]","color":"aqua"}," was kicked by ",{"nbt":"source","storage":"pandamium:temp","interpret":true,"color":"aqua"},"!"]
execute if score <returned> variable matches 0 if score @s silent_punishments matches 1 run tellraw @a[scores={staff_perms=1..}] [{"text":"","color":"gray"},{"text":"[Kick] ","color":"dark_gray"},{"selector":"@p[tag=target]","color":"gray"}," was kicked by ",{"nbt":"source","storage":"pandamium:temp","interpret":true,"color":"gray"},"!"]

execute if score <returned> variable matches 0 as @p[tag=target] run function pandamium:misc/punishment/kick

#
tag @a remove target
tag @s remove source
scoreboard players reset @s kick
scoreboard players enable @s kick
