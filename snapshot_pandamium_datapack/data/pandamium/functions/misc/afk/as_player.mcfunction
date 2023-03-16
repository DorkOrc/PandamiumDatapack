execute store result score <x> variable run data get storage pandamium:temp afk.pos[0] 10
execute store result score <y> variable run data get storage pandamium:temp afk.pos[1] 10
execute store result score <z> variable run data get storage pandamium:temp afk.pos[2] 10

scoreboard players set <moved> variable 1
execute if score @s afk.last_x = <x> variable if score @s afk.last_y = <y> variable if score @s afk.last_z = <z> variable run scoreboard players set <moved> variable 0
execute if score <moved> variable matches 1 run scoreboard players set @s afk.time -2400

scoreboard players operation @s afk.last_x = <x> variable
scoreboard players operation @s afk.last_y = <y> variable
scoreboard players operation @s afk.last_z = <z> variable
