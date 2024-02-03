execute if score @s inspect_inventory matches 1 run return run function pandamium:impl/containers/print_menu/main

scoreboard players set <target_exists> variable 0
scoreboard players operation <target_id> variable = @s inspect_inventory
execute if score <returned> variable matches 0 as @a if score @s id = <target_id> variable store success score <target_exists> variable run tag @s add target
execute if score <returned> variable matches 0 if score <target_exists> variable matches 0 store success score <returned> variable run tellraw @s [{"text":"[Containers]","color":"dark_red"},[{"text":" Could not find a player with ID ","color":"red"},{"score":{"name":"<target_id>","objective":"variable"}},"!"]]
execute if score <returned> variable matches 0 run scoreboard players operation @s selected_player = <target_id> variable

execute if score <returned> variable matches 0 run data modify storage pandamium:containers items set value []
execute if score <returned> variable matches 0 run data modify storage pandamium:containers items set from entity @a[tag=target,limit=1] Inventory
execute if score <returned> variable matches 0 store success score <returned> variable unless data storage pandamium:containers items[0] run tellraw @s [{"text":"[Containers] ","color":"dark_red"},{"selector":"@a[tag=target,limit=1]","color":"red"},{"text":" has no items in their inventory!","color":"red"}]

# Run
data modify storage pandamium:containers source set value 'inventory'
execute if score <returned> variable matches 0 run tellraw @s [{"text":"========","color":"yellow"},{"text":" Inventory Contents ","bold":true},"========",{"text":"\nPlayer: ","bold":true,"color":"yellow"},{"selector":"@a[tag=target,limit=1]"}]
execute if score <returned> variable matches 0 run function pandamium:impl/containers/inventory
execute if score <returned> variable matches 0 run tellraw @s {"text":"=====================================","color":"yellow"}
