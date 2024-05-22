execute unless score @s staff_perms matches 1.. run return run tellraw @s [{"text":"[Toggle Spectator]","color":"dark_red"},{"text":" You do not have permission to use this trigger!","color":"red"}]
execute if score @s jailed matches 1.. run return run tellraw @s [{"text":"[Toggle Spectator]","color":"dark_red"},{"text":" You cannot use this trigger in jail!","color":"red"}]
execute if score @s staff_perms matches 1.. unless score @s staff_perms matches 2.. unless predicate pandamium:in_spawn unless dimension pandamium:staff_world run return run tellraw @s [{"text":"[Toggle Spectator]","color":"dark_red","clickEvent":{"action":"run_command","value":"/trigger spawn set -1"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to teleport to ","color":"yellow"},{"text":"Spawn","bold":true}," in spectator mode"]}},{"text":" Helpers may only use spectator mode at spawn and in the staff world!","color":"red"}]

execute store success score <in_spectator_mode> variable if entity @s[gamemode=spectator]
execute if score <in_spectator_mode> variable matches 0 run gamemode spectator
execute if score <in_spectator_mode> variable matches 1 run effect clear @s night_vision
execute if score <in_spectator_mode> variable matches 1 run gamemode survival
