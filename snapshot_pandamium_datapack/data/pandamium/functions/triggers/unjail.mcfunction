tag @s add running_trigger
scoreboard players set <returned> variable 0

execute if score @s unjail matches 1 store success score <returned> variable run function pandamium:misc/print_jailed_players

execute if score <returned> variable matches 0 run scoreboard players set <player_exists> variable 0
execute if score <returned> variable matches 0 as @a if score @s id = @p[tag=running_trigger] unjail store success score <player_exists> variable run tag @s add selected_player
execute if score <returned> variable matches 0 store success score <returned> variable if score <player_exists> variable matches 0 run tellraw @s [{"text":"[Unjail]","color":"dark_red"},[{"text":" Could not find a player with ID ","color":"red"},{"score":{"name":"@s","objective":"unjail"}},"!"]]
execute if score <returned> variable matches 0 store success score <returned> variable unless score @p[tag=selected_player] jailed matches 1.. run tellraw @s [{"text":"[Unjail] ","color":"dark_red"},{"selector":"@p[tag=selected_player]","color":"red"},{"text":" is not jailed!","color":"red"}]

# Run
execute if score <returned> variable matches 0 as @p[tag=selected_player] run function pandamium:misc/get_unjailed

execute if score <returned> variable matches 0 unless score @s staff_alt matches 1 unless score @s silent_punishments matches 1 run tellraw @a [{"text":"[Unjail] ","color":"dark_purple","clickEvent":{"action":"run_command","value":"trigger spawn set -1"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to teleport to ","color":"dark_purple"},{"text":"Spawn","bold":true}]}},{"selector":"@p[tag=selected_player]","color":"light_purple","clickEvent":{"action":"run_command","value":"trigger spawn set -1"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to teleport to ","color":"dark_purple"},{"text":"Spawn","bold":true}]}}," was unjailed by ",{"selector":"@s","color":"light_purple","clickEvent":{"action":"run_command","value":"trigger spawn set -1"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to teleport to ","color":"dark_purple"},{"text":"Spawn","bold":true}]}},"!"]
execute if score <returned> variable matches 0 unless score @s staff_alt matches 1 if score @s silent_punishments matches 1 run tellraw @a[scores={staff_perms=1..}] [{"text":"","color":"gray","clickEvent":{"action":"run_command","value":"trigger spawn set -1"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to teleport to ","color":"yellow"},{"text":"Spawn","bold":true}]}},{"text":"[Unjail]","color":"dark_gray"}," ",{"selector":"@p[tag=selected_player]","color":"gray","clickEvent":{"action":"run_command","value":"trigger spawn set -1"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to teleport to ","color":"yellow"},{"text":"Spawn","bold":true}]}}," was unjailed by ",{"selector":"@s","color":"gray","clickEvent":{"action":"run_command","value":"trigger spawn set -1"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to teleport to ","color":"yellow"},{"text":"Spawn","bold":true}]}},"!"]
execute if score <returned> variable matches 0 if score @s staff_alt matches 1 unless score @s silent_punishments matches 1 run tellraw @a [{"text":"[Unjail] ","color":"dark_purple","clickEvent":{"action":"run_command","value":"trigger spawn set -1"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to teleport to ","color":"dark_purple"},{"text":"Spawn","bold":true}]}},{"selector":"@p[tag=selected_player]","color":"light_purple","clickEvent":{"action":"run_command","value":"trigger spawn set -1"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to Teleport to ","color":"dark_purple"},{"text":"Spawn","bold":true}]}}," was unjailed by a staff member!"]
execute if score <returned> variable matches 0 if score @s staff_alt matches 1 if score @s silent_punishments matches 1 run tellraw @a[scores={staff_perms=1..}] [{"text":"","color":"gray","clickEvent":{"action":"run_command","value":"trigger spawn set -1"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to teleport to ","color":"yellow"},{"text":"Spawn","bold":true}]}},{"text":"[Unjail]","color":"dark_gray"}," ",{"selector":"@p[tag=selected_player]","color":"gray","clickEvent":{"action":"run_command","value":"trigger spawn set -1"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to teleport to ","color":"yellow"},{"text":"Spawn","bold":true}]}}," was unjailed by a staff member!"]

execute if score <returned> variable matches 0 unless score @s staff_alt matches 1 if score @s silent_punishments matches 1 run tellraw @p[tag=selected_player] [{"text":"[Unjail]","color":"dark_gray"},[{"text":" You were unjailed by ","color":"gray"},{"selector":"@p[tag=running_trigger]","color":"gray"},"!"]]
execute if score <returned> variable matches 0 if score @s staff_alt matches 1 if score @s silent_punishments matches 1 run tellraw @p[tag=selected_player] [{"text":"[Unjail]","color":"dark_gray"},{"text":" You were unjailed by a staff member!","color":"gray"}]

tag @a remove selected_player
tag @s remove running_trigger
scoreboard players reset @s unjail
scoreboard players enable @s unjail
