execute if score @s spawn matches ..-1 if score @s staff_perms matches 1.. run gamemode spectator
execute if score @s spawn matches ..-1 run scoreboard players operation @s spawn *= <-1> variable

execute unless score @s spawn matches 2 run function pandamium:misc/teleport/spawn
execute if score @s spawn matches 2 run function pandamium:misc/teleport/nether_spawn

scoreboard players reset @s spawn
scoreboard players enable @s spawn
