scoreboard players set <returned> variable 0

execute if score <returned> variable matches 0 store success score <returned> variable unless score @s staff_perms matches 2.. run tellraw @s [{"text":"[Spawnpoint]","color":"dark_red"},{"text":" You do not have access to that functionality!","color":"red"}]

execute if score <returned> variable matches 0 run scoreboard players set <target_exists> variable 0
execute if score <returned> variable matches 0 run scoreboard players operation <target_id> variable = @s selected_player
execute if score <returned> variable matches 0 as @a if score @s id = <target_id> variable store success score <target_exists> variable run tag @s add target
execute if score <returned> variable matches 0 store success score <returned> variable if score <target_exists> variable matches 0 run tellraw @s [{"text":"[Spawnpoint]","color":"dark_red"},{"text":" You have not selected a player or the player you have selected is offline!","color":"red"}]

# Run
execute if score <returned> variable matches 0 run scoreboard players set <spawnpoint_exists> variable 0
execute if score <returned> variable matches 0 as @a[tag=target,limit=1] if score @s spawnpoint_x = @s spawnpoint_x store success score <spawnpoint_exists> variable run function pandamium:misc/spawnpoint/get_spawnpoint_coords
execute if score <returned> variable matches 0 store success score <returned> variable if score <spawnpoint_exists> variable matches 0 run tellraw @s [{"text":"[Spawnpoint] ","color":"dark_red"},{"selector":"@a[tag=target,limit=1]","color":"red"},{"text":" has not set a spawnpoint yet!","color":"red"}]

execute if score <returned> variable matches 0 run gamemode spectator
execute if score <returned> variable matches 0 run function pandamium:misc/teleport/to_scores/main

execute if score <returned> variable matches 0 run tellraw @s [{"text":"","color":"yellow"},{"text":"[Spawnpoint]","color":"gold"}," Teleported to ",[{"selector":"@a[tag=target,limit=1]"},"'s"],{"text":" Spawnpoint","color":"gold"}," in spectator mode!"]

tag @a remove target
scoreboard players reset @s spawnpoint
scoreboard players enable @s spawnpoint
