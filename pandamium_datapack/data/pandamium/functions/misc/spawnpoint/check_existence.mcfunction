advancement revoke @s only pandamium:spawnpoint_set_via_respawn_anchor
advancement revoke @s only pandamium:spawnpoint_set_via_bed

data modify storage pandamium:spawnpoint player set from entity @s
execute if data storage pandamium:spawnpoint player.SpawnX run function pandamium:misc/spawnpoint/refresh
data remove storage pandamium:spawnpoint player
