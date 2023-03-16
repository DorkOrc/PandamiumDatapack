tag @s add source
scoreboard players set <returned> variable 0

# Print Nearest Non-Staff Player
execute if score @s ban matches 1 store success score <returned> variable run function pandamium:misc/print_nearest_non_staff_player
execute if score @s ban matches ..-2 store success score <returned> variable run tellraw @s [{"text":"[Ban]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]

# Restrictions
execute if score <returned> variable matches 0 store success score <returned> variable unless score @s staff_perms matches 2.. run tellraw @s [{"text":"[Ban]","color":"dark_red"},{"text":" You do not have permission to use this trigger!","color":"red"}]

execute if score <returned> variable matches 0 run scoreboard players set <target_exists> variable 0
execute if score <returned> variable matches 0 run scoreboard players operation <target_id> variable = @s ban
execute if score <returned> variable matches 0 if score @s ban matches 2.. as @a if score @s id = <target_id> variable store success score <target_exists> variable run tag @s add target
execute if score <returned> variable matches 0 if score <target_exists> variable matches 0 store success score <returned> variable run tellraw @s [{"text":"[Ban]","color":"dark_red"},[{"text":" Could not find a player with ID ","color":"red"},{"score":{"name":"@s","objective":"ban"}},"!"]]

execute if score <returned> variable matches 0 if score @p[tag=source] staff_perms <= @p[tag=target] staff_perms store success score <returned> variable run tellraw @s [{"text":"[Ban]","color":"dark_red"},[{"text":" You cannot ban ","color":"red"},{"selector":"@p[tag=target]","color":"red"},"!"]]

# Do Ban
execute unless score @s staff_alt matches 1.. run data modify storage pandamium:temp punisher set value '{"selector":"@s"}'
execute if score @s staff_alt matches 1.. run data modify storage pandamium:temp punisher set value '"a staff member"'

execute if score <returned> variable matches 0 unless score @s silent_punishments matches 1 run tellraw @a [{"text":"[Ban] ","color":"red"},{"selector":"@p[tag=target]","color":"dark_red"}," was banned by ",{"nbt":"punisher","storage":"pandamium:temp","interpret":true,"color":"dark_red"},"!"]
execute if score <returned> variable matches 0 if score @s silent_punishments matches 1 run tellraw @a[scores={staff_perms=1..}] [{"text":"","color":"gray"},{"text":"[Ban] ","color":"dark_gray"},{"selector":"@p[tag=target]","color":"gray"}," was banned by ",{"nbt":"punisher","storage":"pandamium:temp","interpret":true,"color":"gray"},"!"]

execute if score <returned> variable matches 0 as @p[tag=target] run function pandamium:misc/punishment/ban

#
tag @a remove target
tag @s remove source
scoreboard players reset @s ban
scoreboard players enable @s[scores={staff_perms=2..}] ban
