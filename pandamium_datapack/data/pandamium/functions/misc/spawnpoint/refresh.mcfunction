execute store result score @s spawnpoint_x run data get storage pandamium:temp NBT.SpawnX
execute store result score @s spawnpoint_y run data get storage pandamium:temp NBT.SpawnY
execute store result score @s spawnpoint_z run data get storage pandamium:temp NBT.SpawnZ

execute if data storage pandamium:temp NBT{SpawnDimension:"minecraft:the_nether"} run scoreboard players set @s spawnpoint_dim -1
execute if data storage pandamium:temp NBT{SpawnDimension:"minecraft:overworld"} run scoreboard players set @s spawnpoint_dim 0
execute if data storage pandamium:temp NBT{SpawnDimension:"minecraft:the_end"} run scoreboard players set @s spawnpoint_dim 1
execute if data storage pandamium:temp NBT{SpawnDimension:"pandamium:staff_world"} run scoreboard players set @s spawnpoint_dim 2
