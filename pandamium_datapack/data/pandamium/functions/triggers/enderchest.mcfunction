tag @s add running_trigger
scoreboard players set <returned> variable 0

execute if score @s enderchest matches 1 store success score <returned> variable run function pandamium:misc/print_nearest_non_staff_player

execute if score <returned> variable matches 0 as @a if score @s id = @p[tag=running_trigger] enderchest run tag @s add selected_player
execute if score <returned> variable matches 0 store success score <returned> variable unless entity @p[tag=selected_player] run tellraw @s [{"text":"[Containers]","color":"dark_red"},[{"text":" Could not find a player with ID ","color":"red"},{"score":{"name":"@s","objective":"enderchest"}},"!"]]
execute if score <returned> variable matches 0 run scoreboard players operation @s selected_player = @s enderchest

execute if score <returned> variable matches 0 run data modify storage pandamium:containers items set value []
execute if score <returned> variable matches 0 run data modify storage pandamium:containers items set from entity @p[tag=selected_player] EnderItems
execute if score <returned> variable matches 0 store success score <returned> variable unless data storage pandamium:containers items[0] run tellraw @s [{"text":"[Containers] ","color":"dark_red"},{"selector":"@p[tag=selected_player]","color":"red"},{"text":" has no items in their ender chest!","color":"red"}]

# Run
execute if score <returned> variable matches 0 run tellraw @s [{"text":"========","color":"yellow"},{"text":" Ender Chest Contents ","bold":true},"========",{"text":"\nPlayer: ","bold":true,"color":"yellow"},{"selector":"@p[tag=selected_player]"}]
execute if score <returned> variable matches 0 run function pandamium:containers/enderchest
execute if score <returned> variable matches 0 run tellraw @s {"text":"=======================================","color":"yellow"}

tag @a remove selected_player
tag @s remove running_trigger
scoreboard players reset @s enderchest
scoreboard players enable @s enderchest
