execute store success score <in_spectator_mode> variable if entity @s[gamemode=spectator]

execute store success score <can_run> variable if score @s staff_perms matches 2..
execute if predicate pandamium:in_spawn run scoreboard players set <can_run> variable 1
execute if score @s in_dimension matches 2 run scoreboard players set <can_run> variable 1

execute if score <can_run> variable matches 1 if score <toggle_gamemode> variable matches 0 run gamemode survival
execute if score <can_run> variable matches 1 if score <toggle_gamemode> variable matches 0 run effect clear @s night_vision
execute if score <can_run> variable matches 1 if score <toggle_gamemode> variable matches 1 run gamemode spectator

execute if score <can_run> variable matches 0 run tellraw @s [{"text":"[Info]","color":"dark_red","clickEvent":{"action":"run_command","value":"/trigger spawn set -1"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to teleport to ","color":"yellow"},{"text":"Spawn","bold":true}," in spectator mode"]}},{"text":" Helpers can only use spectator mode at spawn and in the staff world!","color":"red"}]

scoreboard players reset @s toggle_spectator
scoreboard players enable @s toggle_spectator
