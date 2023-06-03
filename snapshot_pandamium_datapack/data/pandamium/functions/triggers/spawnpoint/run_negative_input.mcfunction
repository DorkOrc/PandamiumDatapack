execute if score <returned> variable matches 0 unless score @s staff_perms matches 2.. store success score <returned> variable run tellraw @s [{"text":"[Spawnpoint]","color":"dark_red"},{"text":" You do not have access to that functionality!","color":"red"}]

execute if score <returned> variable matches 0 if score @s spawnpoint matches ..-3 store success score <returned> variable run tellraw @s [{"text":"[Spawnpoint]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]

# find player
execute if score <returned> variable matches 0 run scoreboard players set <target_exists> variable 0
execute if score <returned> variable matches 0 run scoreboard players operation <target_id> variable = @s selected_player
execute if score <returned> variable matches 0 as @a if score @s id = <target_id> variable store success score <target_exists> variable run tag @s add target
execute if score <returned> variable matches 0 if score <target_exists> variable matches 0 store success score <returned> variable run tellraw @s [{"text":"[Spawnpoint]","color":"dark_red"},{"text":" You have not selected a player or the player you have selected is offline!","color":"red"}]

# Run
execute if score <returned> variable matches 0 run scoreboard players set <spawnpoint_exists> variable 0
execute if score <returned> variable matches 0 as @a[tag=target,limit=1] if score @s spawnpoint_x = @s spawnpoint_x run function pandamium:triggers/spawnpoint/load_coordinates
execute if score <returned> variable matches 0 if score <spawnpoint_exists> variable matches 0 store success score <returned> variable run tellraw @s [{"text":"[Spawnpoint] ","color":"dark_red"},{"selector":"@a[tag=target,limit=1]","color":"red"},{"text":" has not set a spawnpoint yet!","color":"red"}]

execute if score <returned> variable matches 0 run gamemode spectator
execute if score <returned> variable matches 0 run function pandamium:utils/teleport/to_scores

execute if score <returned> variable matches 0 run tellraw @s [{"text":"","color":"yellow"},{"text":"[Spawnpoint]","color":"gold"}," Teleported to ",[{"selector":"@a[tag=target,limit=1]"},"'s"]," spawnpoint in spectator mode!"]
