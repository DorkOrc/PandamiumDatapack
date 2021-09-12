advancement revoke @s only pandamium:spawnpoint_set

data modify storage pandamium:temp player set from entity @s
execute if data storage pandamium:temp player.SpawnX run function pandamium:misc/spawnpoint/refresh
data remove storage pandamium:temp player
