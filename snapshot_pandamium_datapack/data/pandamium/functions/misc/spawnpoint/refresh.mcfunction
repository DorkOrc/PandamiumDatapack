execute store result score @s spawnpoint_x run data get storage pandamium:temp nbt.SpawnX
execute store result score @s spawnpoint_y run data get storage pandamium:temp nbt.SpawnY
execute store result score @s spawnpoint_z run data get storage pandamium:temp nbt.SpawnZ

execute if data storage pandamium:temp nbt{SpawnDimension:"minecraft:the_nether"} run scoreboard players set @s spawnpoint_d -1
execute if data storage pandamium:temp nbt{SpawnDimension:"minecraft:overworld"} run scoreboard players set @s spawnpoint_d 0
execute if data storage pandamium:temp nbt{SpawnDimension:"minecraft:the_end"} run scoreboard players set @s spawnpoint_d 1
execute if data storage pandamium:temp nbt{SpawnDimension:"pandamium:staff_world"} run scoreboard players set @s spawnpoint_d 2
