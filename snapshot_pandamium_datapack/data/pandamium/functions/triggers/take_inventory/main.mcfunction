tag @s add source
scoreboard players set <returned> variable 0

execute if score <returned> variable matches 0 unless score @s staff_perms matches 3.. store success score <returned> variable run tellraw @s [{"text":"[Take]","color":"dark_red"},{"text":" You do not have permission to use this trigger!","color":"red"}]
execute if score <returned> variable matches 0 if score @s take_inventory matches 1 store success score <returned> variable run function pandamium:impl/take/print_menu/main
execute if score <returned> variable matches 0 unless score @s take_inventory matches 2.. store success score <returned> variable run tellraw @s [{"text":"[Take]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]

# select player
execute if score <returned> variable matches 0 run scoreboard players set <target_exists> variable 0
execute if score <returned> variable matches 0 run scoreboard players operation <target_id> variable = @s take_inventory
execute if score <returned> variable matches 0 as @a if score @s id = <target_id> variable store success score <target_exists> variable run tag @s add target
execute if score <returned> variable matches 0 if score <target_exists> variable matches 0 store success score <returned> variable run tellraw @s [{"text":"[Take]","color":"dark_red"},[{"text":" Could not find a player with ID ","color":"red"},{"score":{"name":"@s","objective":"take_inventory"}},"!"]]

# Run
execute if score <returned> variable matches 0 as @a[tag=target,limit=1] run function pandamium:player/take_items/inventory
execute if score <returned> variable matches 0 if score <item_count> variable matches 1 run tellraw @s [{"text":"","color":"yellow"},{"text":"[Take]","color":"gold"}," Took ",{"text":"1","bold":true,"color":"gold"}," item from ",{"selector":"@a[tag=target,limit=1]"},"! ",{"text":"[→]","color":"blue","hoverEvent":{"action":"show_text","value":[{"text":"Click to teleport to ","color":"yellow"},{"text":"Staff World","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger staff_world set 2"}}]
execute if score <returned> variable matches 0 unless score <item_count> variable matches 1 run tellraw @s [{"text":"","color":"yellow"},{"text":"[Take]","color":"gold"}," Took ",{"score":{"name":"<item_count>","objective":"variable"},"bold":true,"color":"gold"}," items from ",{"selector":"@a[tag=target,limit=1]"},"! ",{"text":"[→]","color":"blue","hoverEvent":{"action":"show_text","value":[{"text":"Click to teleport to ","color":"yellow"},{"text":"Staff World","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger staff_world set 2"}}]

tag @a remove target
tag @s remove source
scoreboard players reset @s take_inventory
scoreboard players enable @s take_inventory
