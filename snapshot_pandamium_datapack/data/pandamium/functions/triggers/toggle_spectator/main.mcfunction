execute store success score <in_spectator_mode> variable if entity @s[gamemode=spectator]

scoreboard players set <returned> variable 0
execute store success score <returned> variable unless score @s staff_perms matches 2.. unless predicate pandamium:in_spawn unless dimension pandamium:staff_world run tellraw @s [{"text":"[Toggle Spectator]","color":"dark_red","clickEvent":{"action":"run_command","value":"/trigger spawn set -1"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to teleport to ","color":"yellow"},{"text":"Spawn","bold":true}," in spectator mode"]}},{"text":" You can only use spectator mode at spawn and in the staff world!","color":"red"}]

execute if score <returned> variable matches 0 if score <in_spectator_mode> variable matches 0 run gamemode spectator
execute if score <returned> variable matches 0 if score <in_spectator_mode> variable matches 1 run effect clear @s night_vision
execute if score <returned> variable matches 0 if score <in_spectator_mode> variable matches 1 run gamemode survival

scoreboard players reset @s toggle_spectator
scoreboard players enable @s toggle_spectator
