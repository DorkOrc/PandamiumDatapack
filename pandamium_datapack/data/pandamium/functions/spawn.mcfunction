execute if score @s spawn matches ..-1 if score @s staff_perms matches 1.. run gamemode spectator
execute if score @s spawn matches ..-1 run scoreboard players operation @s spawn *= <-1> variable

execute if score @s spawn matches 1 run function pandamium:misc/teleport/spawn
execute if score @s spawn matches 2 run function pandamium:misc/teleport/nether_spawn
execute if score @s spawn matches 3 run function pandamium:misc/teleport/end_spawn

execute if score @s spawn matches 4 run tp @s 0 32 68 0 0

scoreboard players reset @s spawn
scoreboard players enable @s spawn
