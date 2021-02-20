execute if score @s spawn matches ..-1 if score @s staff_perms matches 1.. run gamemode spectator
execute if score @s spawn matches ..-1 run scoreboard players operation @s spawn *= <-1> variable

execute unless score @s spawn matches 2 run tp @s 0.5 85.0 0.5 45 0
execute if score @s spawn matches 2 in the_nether run tp @s 7.0 83.0 1.0 90 0

spectate
experience add @s 0

scoreboard players reset @s spawn
scoreboard players enable @s spawn
