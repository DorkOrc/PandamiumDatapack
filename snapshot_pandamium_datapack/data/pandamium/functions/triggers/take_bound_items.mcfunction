tag @s add source
scoreboard players set <returned> variable 0

execute if score <returned> variable matches 0 unless score @s staff_perms matches 3.. store success score <returned> variable run tellraw @s [{"text":"[Take]","color":"dark_red"},{"text":" You do not have permission to use this trigger!","color":"red"}]
execute if score <returned> variable matches 0 if score @s take_bound_items matches 1 store success score <returned> variable run function pandamium:misc/print_nearest_non_staff_player
execute if score <returned> variable matches 0 unless score @s take_bound_items matches 2.. store success score <returned> variable run tellraw @s [{"text":"[Take]","color":"dark_red"},{"text":" That is not a valid option!"}]

execute if score <returned> variable matches 0 run scoreboard players set <target_exists> variable 0
execute if score <returned> variable matches 0 run scoreboard players operation <target_id> variable = @s take_bound_items
execute if score <returned> variable matches 0 as @a if score @s id = <target_id> variable store success score <target_exists> variable run tag @s add target
execute if score <returned> variable matches 0 if score <target_exists> variable matches 0 store success score <returned> variable run tellraw @s [{"text":"[Take]","color":"dark_red"},[{"text":" Could not find a player with ID ","color":"red"},{"score":{"name":"@s","objective":"take_bound_items"}},"!"]]

# Run
execute if score <returned> variable matches 0 as @p[tag=target] in pandamium:staff_world run function pandamium:misc/take/bound_items/run
execute if score <returned> variable matches 0 run tellraw @s [{"text":"","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger staff_world set 4"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to teleport to ","color":"yellow"},{"text":"Staff World","bold":true}]}},{"text":"[Take]","color":"gold"}," Took ",{"score":{"name":"<item_count>","objective":"variable"},"bold":true,"color":"gold"}," items from ",[{"selector":"@p[tag=target]","clickEvent":{"action":"run_command","value":"/trigger staff_world set 4"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to teleport to ","color":"yellow"},{"text":"Staff World","bold":true}]}},"'s "],{"text":"bound items","bold":true},"!"]

tag @a remove target
tag @s remove source
scoreboard players reset @s take_bound_items
scoreboard players enable @s take_bound_items
