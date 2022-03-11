tag @s add running_trigger
scoreboard players set <returned> variable 0

execute if score <returned> variable matches 0 store success score <returned> variable if score @s take_bound_items matches 1 run function pandamium:misc/print_nearest_non_staff_player
execute if score <returned> variable matches 0 store success score <returned> variable unless score @s take_bound_items matches 2.. run tellraw @s [{"text":"[Take]","color":"dark_red"},{"text":" That is not a valid option!"}]

execute if score <returned> variable matches 0 run scoreboard players set <player_exists> variable 0
execute if score <returned> variable matches 0 as @a if score @s id = @p[tag=running_trigger] take_bound_items store success score <player_exists> variable run tag @s add selected_player
execute if score <returned> variable matches 0 store success score <returned> variable if score <player_exists> variable matches 0 run tellraw @s [{"text":"[Take]","color":"dark_red"},[{"text":" Could not find a player with ID ","color":"red"},{"score":{"name":"@s","objective":"take_bound_items"}},"!"]]

# Run
execute if score <returned> variable matches 0 as @p[tag=selected_player] in pandamium:staff_world run function pandamium:misc/take/take_bound_items
execute if score <returned> variable matches 0 run tellraw @s [{"text":"","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger staff_world set 4"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to teleport to ","color":"yellow"},{"text":"Staff World","bold":true}]}},{"text":"[Take]","color":"gold"}," Took ",{"score":{"name":"<has_items>","objective":"variable"},"bold":true,"color":"gold"}," items from ",[{"selector":"@p[tag=selected_player]","clickEvent":{"action":"run_command","value":"/trigger staff_world set 4"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to teleport to ","color":"yellow"},{"text":"Staff World","bold":true}]}},"'s "],{"text":"bound items","bold":true},"!"]

tag @a remove selected_player
tag @s remove running_trigger
scoreboard players reset @s take_bound_items
scoreboard players enable @s take_bound_items
