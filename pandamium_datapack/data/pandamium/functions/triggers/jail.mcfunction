tag @s add running_trigger

execute store success score <jail_type> temp if score @s jail matches ..-2
scoreboard players add <jail_type> temp 1
execute if score @s jail matches ..-2 run scoreboard players operation @s jail *= <-1> temp

execute if score @s jail matches 1 run function pandamium:misc/print_nearest_non_staff_player

execute if score @s jail matches -1 at @s run scoreboard players operation @s jail = @p[scores={staff_perms=0},distance=..200] id
execute if score @s jail matches -1 at @s unless entity @p[scores={staff_perms=0},distance=..200] run tellraw @s [{"text":"[Info]","color":"dark_red"},{"text":" Could not find a non-staff player nearby!","color":"red"}]

execute if score @s jail matches 2.. as @a if score @s id = @p[tag=running_trigger] jail run tag @s add selected_player
execute store success score <player_exists> temp if entity @p[tag=selected_player]

execute store success score <can_jail> temp unless score @p[tag=selected_player] jailed matches 1..
execute store success score <switching_jail> temp unless score @p[tag=selected_player] jailed = <jail_type> temp

execute if score @s jail matches 2.. if score <player_exists> temp matches 0 run tellraw @s [{"text":"[Jail]","color":"dark_red"},{"text":" Could not find that player!","color":"red"}]
execute if score @s jail matches 2.. if score <player_exists> temp matches 1 if score <can_jail> temp matches 0 if score <switching_jail> temp matches 0 run tellraw @s [{"text":"[Jail] ","color":"dark_red","clickEvent":{"action":"run_command","value":"/trigger spawn set -3"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to Teleport to ","color":"yellow"},{"text":"Jail Area","bold":true,"color":"gold"}]}},{"selector":"@p[tag=selected_player]","color":"red","clickEvent":{"action":"run_command","value":"/trigger spawn set -3"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to Teleport to ","color":"yellow"},{"text":"Jail Area","bold":true,"color":"gold"}]}},{"text":" is already jailed!","color":"red"}]
execute if score @s jail matches 2.. if score <player_exists> temp matches 1 if score <can_jail> temp matches 0 if score <switching_jail> temp matches 1 if score <jail_type> temp matches 1 run tellraw @s [{"text":"[Jail]","color":"gold","clickEvent":{"action":"run_command","value":"/trigger spawn set -3"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to Teleport to ","color":"yellow"},{"text":"Jail Area","bold":true,"color":"gold"}]}},[{"text":" Moved ","color":"yellow"},{"selector":"@p[tag=selected_player]","clickEvent":{"action":"run_command","value":"/trigger spawn set -3"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to Teleport to ","color":"yellow"},{"text":"Jail Area","bold":true,"color":"gold"}]}}," to the main jail!"]]
execute if score @s jail matches 2.. if score <player_exists> temp matches 1 if score <can_jail> temp matches 0 if score <switching_jail> temp matches 1 if score <jail_type> temp matches 2 run tellraw @s [{"text":"[Jail]","color":"gold","clickEvent":{"action":"run_command","value":"/trigger spawn set -3"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to Teleport to ","color":"yellow"},{"text":"Jail Area","bold":true,"color":"gold"}]}},[{"text":" Moved ","color":"yellow"},{"selector":"@p[tag=selected_player]","clickEvent":{"action":"run_command","value":"/trigger spawn set -3"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to Teleport to ","color":"yellow"},{"text":"Jail Area","bold":true,"color":"gold"}]}}," to the questioning jail!"]]

execute if score <player_exists> temp matches 1 if score <can_jail> temp matches 1 as @p[tag=selected_player] run function pandamium:misc/get_jailed
execute if score <player_exists> temp matches 1 run scoreboard players operation @p[tag=selected_player] jailed = <jail_type> temp
execute if score <player_exists> temp matches 1 if score <can_jail> temp matches 1 unless score @s hide_punishments matches 1 run tellraw @a [{"text":"[Info] ","color":"dark_purple","clickEvent":{"action":"run_command","value":"/trigger spawn set -3"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to Teleport to ","color":"dark_purple"},{"text":"Jail Area","bold":true,"color":"light_purple"}]}},{"selector":"@p[tag=selected_player]","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger spawn set -3"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to Teleport to ","color":"dark_purple"},{"text":"Jail Area","bold":true,"color":"light_purple"}]}}," was jailed by ",{"selector":"@s","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger spawn set -3"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to Teleport to ","color":"dark_purple"},{"text":"Jail Area","bold":true,"color":"light_purple"}]}},"!"]
execute if score <player_exists> temp matches 1 if score <can_jail> temp matches 1 if score @s hide_punishments matches 1 run tellraw @a[scores={staff_perms=1..}] [{"text":"","color":"gray","clickEvent":{"action":"run_command","value":"/trigger spawn set -3"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to Teleport to ","color":"yellow"},{"text":"Jail Area","bold":true,"color":"gold"}]}},{"text":"[Info] ","color":"dark_gray"},{"selector":"@p[tag=selected_player]","color":"gray","clickEvent":{"action":"run_command","value":"/trigger spawn set -3"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to Teleport to ","color":"yellow"},{"text":"Jail Area","bold":true,"color":"gold"}]}}," was jailed by ",{"selector":"@s","color":"gray","clickEvent":{"action":"run_command","value":"/trigger spawn set -3"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to Teleport to ","color":"yellow"},{"text":"Jail Area","bold":true,"color":"gold"}]}},"!"]
execute if score <player_exists> temp matches 1 if score <can_jail> temp matches 1 run tellraw @a[scores={staff_perms=1..}] [{"text":"","color":"gray"},{"text":"[Info] ","color":"dark_gray"},{"selector":"@p[tag=selected_player]","color":"gray"},"'s id is ",{"score":{"objective":"id","name":"@p[tag=selected_player]"},"bold":true},"!"]
execute if score <player_exists> temp matches 1 if score <can_jail> temp matches 1 if score @s hide_punishments matches 1 run tellraw @p[tag=selected_player] [{"text":"[Info]","color":"dark_gray"},[{"text":" You were jailed by ","color":"gray"},{"selector":"@p[tag=running_trigger]","color":"gray"},"!"]]

execute if score <player_exists> temp matches 1 if score <can_jail> temp matches 1 in pandamium:staff_world run function pandamium:misc/get_username
execute if score <player_exists> temp matches 1 if score <can_jail> temp matches 1 run tellraw @p[tag=selected_player] [{"text":"[Info]","color":"dark_gray"},{"text":" You can message ","color":"gray"},[{"selector":"@s","color":"gray"},[{"text":" by typing: /tell ","hoverEvent":{"action":"show_text","value":""}},{"nbt":"username","storage":"pandamium:temp","color":"aqua"}]]]

tag @a remove selected_player
tag @s remove running_trigger
scoreboard players reset @s jail
scoreboard players enable @s jail
