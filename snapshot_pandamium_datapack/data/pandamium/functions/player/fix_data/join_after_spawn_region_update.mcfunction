execute in overworld if entity @s[x=-512,y=-64,z=-512,dx=1024,dy=384,dz=1024] run tp @s -289 127 173 0 0

execute unless data entity @s {SpawnDimension:"minecraft:overworld"} run return 0
execute store result score <spawnpoint_x> variable run data get entity @s SpawnX
execute store result score <spawnpoint_z> variable run data get entity @s SpawnZ
execute if score <spawnpoint_x> variable matches -512..512 if score <spawnpoint_z> variable matches -512..512 in overworld run spawnpoint @s -289 127 173 0
