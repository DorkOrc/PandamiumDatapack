execute if score @s parkour_checkpoint matches 0.. run function pandamium:misc/map_specific/parkour/end_parkour

execute if score @s spawn matches ..-1 if score @s staff_perms matches 1.. run gamemode spectator
execute if score @s spawn matches ..-1 run scoreboard players operation @s spawn *= <-1> variable

execute unless score @s spawn matches 2..3 run function pandamium:misc/teleport/spawn
execute if score @s spawn matches 2 run tellraw @s [{"text":"[Spawn]","color":"dark_red"},{"text":" This option is currently unavailable!","color":"red"}]
#execute if score @s spawn matches 2 run function pandamium:misc/teleport/nether_spawn
execute if score @s spawn matches 3 run function pandamium:misc/teleport/end_platform

execute if score @s spawn matches 64 run tp @s -44 144 -102 -180 0

scoreboard players reset @s spawn
scoreboard players enable @s spawn
