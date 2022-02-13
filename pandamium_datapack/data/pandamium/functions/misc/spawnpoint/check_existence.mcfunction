advancement revoke @s only pandamium:detect/spawnpoint_set

data modify storage pandamium:temp NBT set from entity @s
execute if data storage pandamium:temp NBT.SpawnX run function pandamium:misc/spawnpoint/refresh
data remove storage pandamium:temp NBT
