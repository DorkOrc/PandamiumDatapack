tag @s add running_trigger

execute if score @s unjail matches 1 store success score <jailed_player_exists> variable if entity @a[scores={jailed=1..}]
execute if score @s unjail matches 1 if score <jailed_player_exists> variable matches 0 run tellraw @s [{"text":"[Unjail]","color":"dark_red"},{"text":" There are no jailed players online!","color":"red"}]
execute if score @s unjail matches 1 if score <jailed_player_exists> variable matches 1 run function pandamium:misc/jail/print_jailed_players

execute if score @s unjail matches 2.. as @a if score @s id = @p[tag=running_trigger] unjail run tag @s add selected_player
execute store success score <player_exists> variable if entity @p[tag=selected_player]
execute if score @s unjail matches 2.. if score <player_exists> variable matches 0 run tellraw @s [{"text":"[Unjail]","color":"dark_red"},{"text":" Could not find that player!","color":"red"}]

execute store success score <player_is_jailed> variable if score @p[tag=selected_player] jailed matches 1..
execute if score <player_exists> variable matches 1 if score <player_is_jailed> variable matches 0 run tellraw @s [{"text":"[Unjail]","color":"dark_red"},{"text":" This player is already not jailed!","color":"red"}]

execute if score <player_exists> variable matches 1 if score <player_is_jailed> variable matches 1 as @p[tag=selected_player] run function pandamium:misc/get_unjailed
execute if score <player_exists> variable matches 1 if score <player_is_jailed> variable matches 1 unless score @s hide_punishments matches 1 run tellraw @a [{"text":"[Info] ","color":"dark_purple","clickEvent":{"action":"run_command","value":"/trigger spawn set -1"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to Teleport to ","color":"yellow"},{"text":"Spawn","bold":true,"color":"gold"}]}},{"selector":"@p[tag=selected_player]","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger spawn set -1"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to Teleport to ","color":"yellow"},{"text":"Spawn","bold":true,"color":"gold"}]}}," was unjailed by ",{"selector":"@s","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger spawn set -1"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to Teleport to ","color":"yellow"},{"text":"Spawn","bold":true,"color":"gold"}]}},"!"]
execute if score <player_exists> variable matches 1 if score <player_is_jailed> variable matches 1 if score @s hide_punishments matches 1 run tellraw @a[scores={staff_perms=1..}] [{"text":"","color":"gray","clickEvent":{"action":"run_command","value":"/trigger spawn set -1"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to Teleport to ","color":"yellow"},{"text":"Spawn","bold":true,"color":"gold"}]}},{"text":"[Info]","color":"dark_gray"}," ",{"selector":"@p[tag=selected_player]","clickEvent":{"action":"run_command","value":"/trigger spawn set -1"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to Teleport to ","color":"yellow"},{"text":"Spawn","bold":true,"color":"gold"}]}}," was unjailed by ",{"selector":"@s","clickEvent":{"action":"run_command","value":"/trigger spawn set -1"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to Teleport to ","color":"yellow"},{"text":"Spawn","bold":true,"color":"gold"}]}},"!"]

tag @a remove selected_player
tag @s remove running_trigger
scoreboard players reset @s unjail
scoreboard players enable @s unjail
