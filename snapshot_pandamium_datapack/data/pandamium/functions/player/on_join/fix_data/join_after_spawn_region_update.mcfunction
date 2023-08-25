execute in overworld if entity @s[predicate=pandamium:in_spawn] positioned -289 127 173 rotated 0 0 run function pandamium:utils/teleport/here

execute unless data entity @s {SpawnDimension:"minecraft:overworld"} run return 0
execute store result score <spawnpoint_x> variable run data get entity @s SpawnX
execute store result score <spawnpoint_z> variable run data get entity @s SpawnZ
execute if score <spawnpoint_x> variable matches -512..512 if score <spawnpoint_z> variable matches -512..512 in overworld run spawnpoint @s -289 127 173 0
