tag @s add source
scoreboard players set <returned> variable 0

execute if score @s unjail matches 1 store success score <returned> variable run function pandamium:misc/print_jailed_players

execute if score <returned> variable matches 0 run scoreboard players set <target_exists> variable 0
execute if score <returned> variable matches 0 run scoreboard players operation <target_id> variable = @s unjail
execute if score <returned> variable matches 0 as @a if score @s id = <target_id> variable store success score <target_exists> variable run tag @s add target
execute if score <returned> variable matches 0 if score <target_exists> variable matches 0 store success score <returned> variable run tellraw @s [{"text":"[Unjail]","color":"dark_red"},[{"text":" Could not find a player with ID ","color":"red"},{"score":{"name":"@s","objective":"unjail"}},"!"]]
execute if score <returned> variable matches 0 unless score @p[tag=target] jailed matches 1.. store success score <returned> variable run tellraw @s [{"text":"[Unjail] ","color":"dark_red"},{"selector":"@p[tag=target]","color":"red"},{"text":" is not jailed!","color":"red"}]

# Run
execute unless score @s staff_alt matches 1.. run data modify storage pandamium:temp punisher set value '{"selector":"@s"}'
execute if score @s staff_alt matches 1.. run data modify storage pandamium:temp punisher set value '"a staff member"'

execute if score <returned> variable matches 0 unless score @s silent_punishments matches 1 run tellraw @a [{"text":"[Unjail] ","color":"dark_purple"},{"selector":"@p[tag=target]","color":"light_purple"}," was unjailed by ",{"nbt":"punisher","storage":"pandamium:temp","interpret":true,"color":"light_purple"},"!"]
execute if score <returned> variable matches 0 if score @s silent_punishments matches 1 run tellraw @a[scores={staff_perms=1..}] [{"text":"","color":"gray"},{"text":"[Unjail]","color":"dark_gray"}," ",{"selector":"@p[tag=target]","color":"gray"}," was unjailed by ",{"nbt":"punisher","storage":"pandamium:temp","interpret":true,"color":"gray"},"! "]
execute if score <returned> variable matches 0 if score @s silent_punishments matches 1 run tellraw @p[tag=target,scores={staff_perms=0}] [{"text":"[Unjail]","color":"dark_gray"},[{"text":" You were unjailed by ","color":"gray"},{"nbt":"punisher","storage":"pandamium:temp","interpret":true,"color":"gray"},"!"]]

execute if score <returned> variable matches 0 run tellraw @a[scores={staff_perms=1..}] [{"text":"","color":"gray"},{"text":"[Unjail] ","color":"dark_gray"},{"selector":"@p[tag=target]","color":"gray"},"'s id is ",{"score":{"objective":"id","name":"@p[tag=target]"},"bold":true},"! ",{"text":"[→]","color":"blue","bold":true,"clickEvent":{"action":"run_command","value":"/trigger spawn set -1"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to teleport to ","color":"blue"},{"text":"Spawn","bold":true}," in spectator mode"]}}]

execute if score <returned> variable matches 0 as @p[tag=target] run function pandamium:misc/punishment/unjail

#
tag @a remove target
tag @s remove source
scoreboard players reset @s unjail
scoreboard players enable @s unjail
