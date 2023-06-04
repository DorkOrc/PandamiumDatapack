tag @s add source
scoreboard players set <returned> variable 0

execute if score @s unjail matches 1 store success score <returned> variable run function pandamium:triggers/unjail/print_menu/main

# select player from session id
execute if score <returned> variable matches 0 if score @s unjail matches -1060..-1001 run function pandamium:triggers/unjail/select_player_from_session_id

execute if score <returned> variable matches 0 run scoreboard players set <target_exists> variable 0
execute if score <returned> variable matches 0 run scoreboard players operation <target_id> variable = @s unjail
execute if score <returned> variable matches 0 as @a if score @s id = <target_id> variable store success score <target_exists> variable run tag @s add target
execute if score <returned> variable matches 0 if score <target_exists> variable matches 0 store success score <returned> variable run tellraw @s [{"text":"[Unjail]","color":"dark_red"},[{"text":" Could not find a player with ID ","color":"red"},{"score":{"name":"@s","objective":"unjail"}},"!"]]
execute if score <returned> variable matches 0 unless score @a[tag=target,limit=1] jailed matches 1.. store success score <returned> variable run tellraw @s [{"text":"[Unjail] ","color":"dark_red"},{"selector":"@a[tag=target,limit=1]","color":"red"},{"text":" is not jailed!","color":"red"}]

# Run
execute unless score @s is_staff_alt matches 1 run data modify storage pandamium:temp source set value '{"selector":"@s"}'
execute if score @s is_staff_alt matches 1 run data modify storage pandamium:temp source set value '"a staff member"'

execute if score <returned> variable matches 0 unless score @s silent_punishments matches 1 run tellraw @a [{"text":"[Unjail] ","color":"dark_purple"},{"selector":"@a[tag=target,limit=1]","color":"light_purple"}," was unjailed by ",{"nbt":"source","storage":"pandamium:temp","interpret":true,"color":"light_purple"},"!"]
execute if score <returned> variable matches 0 if score @s silent_punishments matches 1 run tellraw @a[scores={staff_perms=1..}] [{"text":"","color":"gray"},{"text":"[Unjail]","color":"dark_gray"}," ",{"selector":"@a[tag=target,limit=1]","color":"gray"}," was unjailed by ",{"nbt":"source","storage":"pandamium:temp","interpret":true,"color":"gray"},"! "]
execute if score <returned> variable matches 0 if score @s silent_punishments matches 1 run tellraw @a[tag=target,scores={staff_perms=0},limit=1] [{"text":"[Unjail]","color":"dark_gray"},[{"text":" You were unjailed by ","color":"gray"},{"nbt":"source","storage":"pandamium:temp","interpret":true,"color":"gray"},"!"]]

execute if score <returned> variable matches 0 run tellraw @a[scores={staff_perms=1..}] [{"text":"","color":"gray"},{"text":"[Unjail] ","color":"dark_gray"},{"selector":"@a[tag=target,limit=1]","color":"gray"},"'s id is ",{"score":{"objective":"id","name":"@a[tag=target,limit=1]"},"bold":true},"! ",{"text":"[→]","color":"blue","bold":true,"clickEvent":{"action":"run_command","value":"/trigger spawn set -1"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to teleport to ","color":"blue"},{"text":"Spawn","bold":true}," in spectator mode"]}}]

execute if score <returned> variable matches 0 as @a[tag=target,limit=1] run function pandamium:player/punishment/unjail

#
tag @a remove target
tag @s remove source
scoreboard players reset @s unjail
scoreboard players enable @s unjail
