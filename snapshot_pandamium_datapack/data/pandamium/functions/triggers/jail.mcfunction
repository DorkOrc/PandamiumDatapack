scoreboard players set <returned> variable 0

# positive -> jail_type=1
# negative -> jail_type=2
execute store success score <jail_type> variable if score @s jail matches ..-2
scoreboard players add <jail_type> variable 1

execute if score @s jail matches ..-2 run scoreboard players operation @s jail *= #-1 constant

execute store success score <returned> variable if score @s jail matches 1 run function pandamium:misc/print_nearest_non_staff_player

execute if score <returned> variable matches 0 if score @s jail matches -1 run scoreboard players operation @s jail = @p[scores={staff_perms=0},distance=..200] id
execute if score <returned> variable matches 0 store success score <returned> variable if score @s jail matches -1 run tellraw @s [{"text":"[Jail]","color":"dark_red"},{"text":" Could not find a non-staff player nearby!","color":"red"}]

# Select player
execute if score <returned> variable matches 0 run scoreboard players set <target_exists> variable 0
execute if score <returned> variable matches 0 run scoreboard players operation <target_id> variable = @s jail
execute if score <returned> variable matches 0 if score @s jail matches 2.. as @a if score @s id = <target_id> variable store success score <target_exists> variable run tag @s add target
execute if score <returned> variable matches 0 store success score <returned> variable if score <target_exists> variable matches 0 run tellraw @s [{"text":"[Jail]","color":"dark_red"},[{"text":" Could not find a player with ID ","color":"red"},{"score":{"name":"@s","objective":"jail"}},"!"]]

execute if score <returned> variable matches 0 as @a[tag=target,limit=1] run scoreboard players operation <player_in_jail> variable = @s jailed

execute if score <returned> variable matches 0 run scoreboard players operation @a[tag=target,limit=1] jailed = <jail_type> variable
execute if score <returned> variable matches 0 store success score <returned> variable if score <player_in_jail> variable matches 1.. unless score <player_in_jail> variable = <jail_type> variable if score <jail_type> variable matches 1 run tellraw @s [{"text":"[Jail]","color":"gold","clickEvent":{"action":"run_command","value":"/trigger spawn set -101"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to teleport to ","color":"yellow"},{"text":"Jail Area","bold":true,"color":"gold"}," in spectator mode"]}},[{"text":" Moved ","color":"yellow"},{"selector":"@a[tag=target,limit=1]"}," to the main jail!"]]
execute if score <returned> variable matches 0 store success score <returned> variable if score <player_in_jail> variable matches 1.. unless score <player_in_jail> variable = <jail_type> variable if score <jail_type> variable matches 2 run tellraw @s [{"text":"[Jail]","color":"gold","clickEvent":{"action":"run_command","value":"/trigger spawn set -101"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to teleport to ","color":"yellow"},{"text":"Jail Area","bold":true,"color":"gold"}," in spectator mode"]}},[{"text":" Moved ","color":"yellow"},{"selector":"@a[tag=target,limit=1]"}," to the questioning jail!"]]

execute if score <returned> variable matches 0 store success score <returned> variable if score <player_in_jail> variable matches 1.. run tellraw @s [{"text":"[Jail] ","color":"dark_red","clickEvent":{"action":"run_command","value":"/trigger spawn set -101"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to teleport to ","color":"yellow"},{"text":"Jail Area","bold":true,"color":"gold"}," in spectator mode"]}},{"selector":"@a[tag=target,limit=1]","color":"red"},{"text":" is already jailed!","color":"red"}]

# Do Jail
execute if score <returned> variable matches 0 as @a[tag=target,limit=1] run function pandamium:misc/punishment/jail

execute if score <returned> variable matches 0 run scoreboard players add @s silent_punishments 0
execute if score <returned> variable matches 0 unless score @s staff_alt matches 1.. if score @s silent_punishments matches 0 run tellraw @a [{"text":"[Jail] ","color":"dark_purple","clickEvent":{"action":"run_command","value":"/trigger spawn set -101"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to teleport to ","color":"dark_purple"},{"text":"Jail Area","bold":true}," in spectator mode"]}},{"selector":"@a[tag=target,limit=1]","color":"light_purple"}," was jailed by ",{"selector":"@s","color":"light_purple"},"!"]
execute if score <returned> variable matches 0 unless score @s staff_alt matches 1.. if score @s silent_punishments matches 1 run tellraw @a[scores={staff_perms=1..}] [{"text":"","color":"gray","clickEvent":{"action":"run_command","value":"/trigger spawn set -101"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to teleport to ","color":"yellow"},{"text":"Jail Area","bold":true,"color":"gold"}," in spectator mode"]}},{"text":"[Jail] ","color":"dark_gray"},{"selector":"@a[tag=target,limit=1]","color":"gray"}," was jailed by ",{"selector":"@s","color":"gray"},"!"]
execute if score <returned> variable matches 0 if score @s staff_alt matches 1.. if score @s silent_punishments matches 0 run tellraw @a [{"text":"[Jail] ","color":"dark_purple","clickEvent":{"action":"run_command","value":"/trigger spawn set -101"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to teleport to ","color":"dark_purple"},{"text":"Jail Area","bold":true}," in spectator mode"]}},{"selector":"@a[tag=target,limit=1]","color":"light_purple"}," was jailed by a staff member!"]
execute if score <returned> variable matches 0 if score @s staff_alt matches 1.. if score @s silent_punishments matches 1 run tellraw @a[scores={staff_perms=1..}] [{"text":"","color":"gray","clickEvent":{"action":"run_command","value":"/trigger spawn set -101"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to teleport to ","color":"yellow"},{"text":"Jail Area","bold":true,"color":"gold"}," in spectator mode"]}},{"text":"[Jail] ","color":"dark_gray"},{"selector":"@a[tag=target,limit=1]","color":"gray"}," was jailed by a staff member!"]

execute if score <returned> variable matches 0 run tellraw @a[scores={staff_perms=1..}] [{"text":"","color":"gray"},{"text":"[Jail] ","color":"dark_gray"},{"selector":"@a[tag=target,limit=1]","color":"gray"},"'s id is ",{"score":{"objective":"id","name":"@a[tag=target,limit=1]"},"bold":true},"!"]

execute if score <returned> variable matches 0 unless score @s staff_alt matches 1.. if score @s silent_punishments matches 1 run tellraw @a[tag=target,limit=1] [{"text":"[Jail]","color":"dark_gray"},[{"text":" You were jailed by ","color":"gray"},{"selector":"@s","color":"gray"},"!"]]
execute if score <returned> variable matches 0 if score @s staff_alt matches 1.. if score @s silent_punishments matches 1 run tellraw @a[tag=target,limit=1] [{"text":"[Jail]","color":"dark_gray"},{"text":" You were jailed by a staff member!","color":"gray"}]

execute if score <returned> variable matches 0 unless score @s staff_alt matches 1.. in pandamium:staff_world run function pandamium:misc/get_username
execute if score <returned> variable matches 0 unless score @s staff_alt matches 1.. run tellraw @a[tag=target,limit=1] [{"text":"[Jail]","color":"dark_gray"},{"text":" You can message ","color":"gray"},[{"selector":"@s","color":"gray"},[{"text":" by typing: /tell ","hoverEvent":{"action":"show_text","value":""}},[{"nbt":"username","storage":"pandamium:temp","color":"aqua"}," <message>"]]]]
execute if score <returned> variable matches 0 if score @s staff_alt matches 1.. run tellraw @a[tag=target,limit=1] [{"text":"[Jail]","color":"dark_gray"},{"text":" You can message a staff member by typing: /tell ","color":"gray","clickEvent":{"action":"suggest_command","value":"/tell "}},{"text":"<username>","color":"aqua"},{"text":" <message>","color":"yellow"}]

tag @a remove target
scoreboard players reset @s jail
scoreboard players enable @s jail
