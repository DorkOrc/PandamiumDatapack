execute unless score @s spawn matches 2 in minecraft:overworld run tp @s 0 64 0
execute if score @s spawn matches 2 in minecraft:the_nether run tp @s 8.5 83 0.5

scoreboard players reset @s spawn
scoreboard players enable @s spawn
