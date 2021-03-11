execute store result score @s spawnpoint_x run data get storage pandamium:spawnpoint player.SpawnX
execute store result score @s spawnpoint_y run data get storage pandamium:spawnpoint player.SpawnY
execute store result score @s spawnpoint_z run data get storage pandamium:spawnpoint player.SpawnZ

execute if data storage pandamium:spawnpoint player{SpawnDimension:"minecraft:the_nether"} run scoreboard players set @s spawnpoint_dim -1
execute if data storage pandamium:spawnpoint player{SpawnDimension:"minecraft:overworld"} run scoreboard players set @s spawnpoint_dim 0
execute if data storage pandamium:spawnpoint player{SpawnDimension:"minecraft:the_end"} run scoreboard players set @s spawnpoint_dim 1
execute if data storage pandamium:spawnpoint player{SpawnDimension:"pandamium:staff_world"} run scoreboard players set @s spawnpoint_dim 2
