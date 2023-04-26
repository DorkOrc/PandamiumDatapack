advancement revoke @s only pandamium:detect/spawnpoint_set

data modify storage pandamium:temp nbt set from entity @s
execute if data storage pandamium:temp nbt.SpawnX run function pandamium:impl/spawnpoint/refresh
data remove storage pandamium:temp nbt
