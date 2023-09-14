tag @s add source
scoreboard players set <returned> variable 0

# print menu
execute if score <returned> variable matches 0 if score @s jail matches 1 store success score <returned> variable run function pandamium:triggers/jail/print_menu/main

# quick-jail
execute if score <returned> variable matches 0 if score @s jail matches -1 run scoreboard players operation @s jail = @a[scores={staff_perms=0},distance=..200,limit=1] id
execute if score <returned> variable matches 0 if score @s jail matches -1 store success score <returned> variable run tellraw @s [{"text":"[Jail]","color":"dark_red"},{"text":" Could not find a non-staff player nearby!","color":"red"}]

# restrictions
execute if score <returned> variable matches 0 unless score @s staff_perms matches 1.. store success score <returned> variable run tellraw @s [{"text":"[Jail]","color":"dark_red"},{"text":" You do not have permission to use this trigger!","color":"red"}]
execute if score <returned> variable matches 0 if score @s jail matches ..-2 unless score @s jail matches -1060..-1001 store success score <returned> variable run tellraw @s [{"text":"[Jail]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]

# select player from session id
execute if score <returned> variable matches 0 if score @s jail matches -1060..-1001 run function pandamium:triggers/jail/select_player_from_session_id

# select player
execute if score <returned> variable matches 0 run scoreboard players set <target_exists> variable 0
execute if score <returned> variable matches 0 run scoreboard players operation <target_id> variable = @s jail
execute if score <returned> variable matches 0 as @a if score @s id = <target_id> variable store success score <target_exists> variable run tag @s add target
execute if score <returned> variable matches 0 if score <target_exists> variable matches 0 store success score <returned> variable run tellraw @s [{"text":"[Jail]","color":"dark_red"},[{"text":" Could not find a player with ID ","color":"red"},{"score":{"name":"@s","objective":"jail"}},"!"]]

# error if player is already jailed
execute if score <returned> variable matches 0 store success score <returned> variable if score @a[tag=target,limit=1] jailed matches 1.. run tellraw @s [{"text":"[Jail] ","color":"dark_red"},{"selector":"@a[tag=target,limit=1]","color":"red"},{"text":" is already jailed! ","color":"red"},{"text":"[→]","color":"blue","clickEvent":{"action":"run_command","value":"/trigger spawn set -101"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to teleport to ","color":"blue"},{"text":"Jail Area","bold":true}," in spectator mode"]}}]

# do jail
execute unless score @s alt_of matches 1.. run data modify storage pandamium:temp source set value '{"selector":"@s"}'
execute if score @s alt_of matches 1.. run data modify storage pandamium:temp source set value '"a staff member"'

execute if score <returned> variable matches 0 unless score @s silent_punishments matches 1 run tellraw @a [{"text":"[Jail] ","color":"dark_purple"},{"selector":"@a[tag=target,limit=1]","color":"light_purple"}," was jailed by ",{"nbt":"source","storage":"pandamium:temp","interpret":true,"color":"light_purple"},"!"]
execute if score <returned> variable matches 0 if score @s silent_punishments matches 1 run tellraw @a[scores={staff_perms=1..}] [{"text":"","color":"gray"},{"text":"[Jail] ","color":"dark_gray"},{"selector":"@a[tag=target,limit=1]","color":"gray"}," was jailed by ",{"nbt":"source","storage":"pandamium:temp","interpret":true,"color":"gray"},"!"]

execute if score <returned> variable matches 0 run tellraw @a[scores={staff_perms=1..}] [{"text":"","color":"gray"},{"text":"[Jail] ","color":"dark_gray"},{"selector":"@a[tag=target,limit=1]","color":"gray"},"'s id is ",{"score":{"objective":"id","name":"@a[tag=target,limit=1]"},"bold":true},"! ",{"text":"[→]","color":"blue","clickEvent":{"action":"run_command","value":"/trigger spawn set -101"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to teleport to ","color":"blue"},{"text":"Jail Area","bold":true}," in spectator mode"]}}]

execute if score <returned> variable matches 0 as @a[tag=target,limit=1] run function pandamium:player/punishment/jail

#
tag @a remove target
tag @s remove source
scoreboard players reset @s jail
scoreboard players enable @s jail
