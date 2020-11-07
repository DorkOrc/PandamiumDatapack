execute store result score @s spawnpoint_x run data get storage pandamium: player.SpawnX
execute store result score @s spawnpoint_y run data get storage pandamium: player.SpawnY
execute store result score @s spawnpoint_z run data get storage pandamium: player.SpawnZ

scoreboard players set @s spawnpoint_dim 0
execute if data storage pandamium: player{SpawnDimension:"minecraft:the_nether"} run scoreboard players set @s spawnpoint_dim -1
execute if data storage pandamium: player{SpawnDimension:"minecraft:the_end"} run scoreboard players set @s spawnpoint_dim 1
