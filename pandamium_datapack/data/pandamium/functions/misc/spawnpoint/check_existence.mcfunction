tag @s remove spawnpoint_advancement

data modify storage pandamium: player set from entity @s
execute if data storage pandamium: player.SpawnX run function pandamium:misc/spawnpoint/refresh
data remove storage pandamium: player
