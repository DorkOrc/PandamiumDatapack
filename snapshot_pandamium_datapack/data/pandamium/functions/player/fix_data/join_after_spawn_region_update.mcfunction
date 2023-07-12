execute in overworld run tp @s[predicate=pandamium:in_spawn] -289 127 173 0 0

execute unless data entity @s {SpawnDimension:"minecraft:overworld"} run return 0
execute store result score <spawnpoint_x> variable run data get entity @s SpawnX
execute store result score <spawnpoint_z> variable run data get entity @s SpawnZ
execute if score <spawnpoint_x> variable matches -512..512 if score <spawnpoint_z> variable matches -512..512 in overworld run spawnpoint @s -289 127 173 0
