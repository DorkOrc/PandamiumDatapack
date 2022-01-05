tag @s add running_trigger

execute store success score <can_run> variable if score @s take_enderchest matches 2..

execute if score @s take_enderchest matches 1 run function pandamium:misc/print_nearest_non_staff_player

scoreboard players set <player_exists> variable 0
execute if score @s take_enderchest matches 2.. as @a if score @s id = @p[tag=running_trigger] take_enderchest store success score <player_exists> variable run tag @s add selected_player
execute if score <player_exists> variable matches 0 run scoreboard players set <can_run> variable 0

execute if score <can_run> variable matches 1 as @p[tag=selected_player] in pandamium:staff_world run function pandamium:misc/take/take_enderchest

# Success
execute if score <can_run> variable matches 1 run tellraw @s [{"text":"","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger staff_world set 3"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to teleport to ","color":"yellow"},{"text":"Staff World","bold":true}]}},{"text":"[Take]","color":"gold"}," Took ",{"score":{"name":"<has_items>","objective":"variable"},"bold":true,"color":"gold"}," items from ",[{"selector":"@p[tag=selected_player]","clickEvent":{"action":"run_command","value":"/trigger staff_world set 3"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to teleport to ","color":"yellow"},{"text":"Staff World","bold":true}]}},"'s "],{"text":"ender chest","bold":true},"!"]

# Errors
scoreboard players operation <displayed_error> variable = <can_run> variable
execute unless score <displayed_error> variable matches 1 store success score <displayed_error> variable unless score @s take_enderchest matches 2..
execute unless score <displayed_error> variable matches 1 store success score <displayed_error> variable unless score <player_exists> variable matches 1 run tellraw @s [{"text":"[Take]","color":"dark_red"},{"text":" Could not find that player!","color":"red"}]
execute unless score <displayed_error> variable matches 1 store success score <displayed_error> variable unless score <has_items> variable matches 1.. run tellraw @s [{"text":"[Take] ","color":"dark_red"},{"selector":"@p[tag=selected_player]","color":"red"},{"text":" has no items in their ender chest!","color":"red"}]

tag @a remove selected_player
tag @s remove running_trigger
scoreboard players reset @s take_enderchest
scoreboard players enable @s take_enderchest
