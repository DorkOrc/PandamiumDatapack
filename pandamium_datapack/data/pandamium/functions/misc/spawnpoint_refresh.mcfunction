execute if data entity @s SpawnX store result score @s spawnpoint_x run data get entity @s SpawnX
execute if data entity @s SpawnY store result score @s spawnpoint_y run data get entity @s SpawnY
execute if data entity @s SpawnZ store result score @s spawnpoint_z run data get entity @s SpawnZ
execute if data entity @s SpawnDimension if entity @s[nbt={Dimension:"minecraft:the_nether"}] run scoreboard players set @s spawn_dimension -1
execute if data entity @s SpawnDimension if entity @s[nbt={Dimension:"minecraft:overworld"}] run scoreboard players set @s spawn_dimension 0
execute if data entity @s SpawnDimension if entity @s[nbt={Dimension:"minecraft:the_end"}] run scoreboard players set @s spawn_dimension 1
