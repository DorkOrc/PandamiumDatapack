execute if score @s inventory matches 1 run function pandamium:misc/print_nearest_non_staff_player

execute if score @s inventory matches 2.. run tag @s add running_trigger
execute if score @s inventory matches 2.. as @a if score @s id = @p[tag=running_trigger] inventory run tag @s add selected_player
execute store success score <player_exists> variable if entity @p[tag=selected_player]
execute if score @s inventory matches 2.. if score <player_exists> variable matches 1 run scoreboard players operation @s selected_player = @s inventory

execute store success score <has_items> variable if data entity @p[tag=selected_player] Inventory[0]

execute if score @s inventory matches 2.. if score <player_exists> variable matches 0 run tellraw @s [{"text":"[Containers]","color":"dark_red"},{"text":" Could not find that player!","color":"red"}]
execute if score <player_exists> variable matches 1 if score <has_items> variable matches 0 run tellraw @s [{"text":"[Containers] ","color":"dark_red"},{"selector":"@p[tag=selected_player]","color":"red"},{"text":" has no items in their inventory!","color":"red"}]
execute if score <player_exists> variable matches 1 if score <has_items> variable matches 1 run tellraw @s [{"text":"======== ","color":"yellow"},{"text":"Inventory Contents","bold":true}," ========",{"text":"\nPlayer: ","bold":true,"color":"aqua"},{"selector":"@p[tag=selected_player]"}]
execute if score <player_exists> variable matches 1 if score <has_items> variable matches 1 as @p[tag=selected_player] run data modify storage pandamium:containers items set from entity @s Inventory
execute if score <player_exists> variable matches 1 if score <has_items> variable matches 1 run function pandamium:containers/inventory
execute if score <player_exists> variable matches 1 if score <has_items> variable matches 1 run tellraw @s {"text":"=====================================","color":"yellow"}

tag @a remove selected_player
tag @s remove running_trigger
scoreboard players reset @s inventory
scoreboard players enable @s inventory
