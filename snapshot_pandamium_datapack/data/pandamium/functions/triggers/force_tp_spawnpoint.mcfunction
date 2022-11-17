tag @s add running_trigger
scoreboard players set <returned> variable 0

execute if score <returned> variable matches 0 store success score <returned> variable unless score @s staff_perms matches 2.. run tellraw @s [{"text":"[Spawnpoint]","color":"dark_red"},{"text":" You do not have access to that functionality!","color":"red"}]

execute if score <returned> variable matches 0 run scoreboard players operation @s spawnpoint *= #-1 constant
execute if score <returned> variable matches 0 as @a if score @s id = @p[tag=running_trigger] selected_player run tag @s add selected_player
execute if score <returned> variable matches 0 store success score <returned> variable unless entity @p[tag=selected_player] run tellraw @s [{"text":"[Spawnpoint]","color":"dark_red"},{"text":" You have not selected a player or the player you have selected is offline!","color":"red"}]

# Run
scoreboard players set <spawnpoint_exists> variable 0
execute if score <returned> variable matches 0 as @p[tag=selected_player] if score @s spawnpoint_x = @s spawnpoint_x store success score <spawnpoint_exists> variable run function pandamium:misc/spawnpoint/load_spawnpoint
execute if score <returned> variable matches 0 store success score <returned> variable if score <spawnpoint_exists> variable matches 0 run tellraw @s [{"text":"[Spawnpoint] ","color":"dark_red"},{"selector":"@p[tag=selected_player]","color":"red"},{"text":" has not set a spawnpoint yet!","color":"red"}]

execute if score <returned> variable matches 0 run gamemode spectator
execute if score <returned> variable matches 0 run function pandamium:misc/teleport/to_scores/main

execute if score <returned> variable matches 0 run tellraw @s [{"text":"","color":"yellow"},{"text":"[Spawnpoint]","color":"gold"}," Teleported to ",[{"selector":"@p[tag=selected_player]"},"'s"],{"text":" Spawnpoint","color":"gold","bold":true}," in spectator mode!"]

tag @a remove selected_player
tag @s remove running_trigger
scoreboard players reset @s spawnpoint
scoreboard players enable @s spawnpoint
