scoreboard players reset @s set_spawnpoint

data modify storage pandamium:spawnpoint player set from entity @s
execute if data storage pandamium:spawnpoint player.SpawnX run function pandamium:misc/spawnpoint/refresh
data remove storage pandamium:spawnpoint player
