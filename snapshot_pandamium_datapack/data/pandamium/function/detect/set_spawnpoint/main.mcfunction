data modify storage pandamium:local functions."pandamium:detect/set_spawnpoint/*".player_data set from entity @s {}
execute if data storage pandamium:local functions."pandamium:detect/set_spawnpoint/*".player_data.SpawnX run function pandamium:detect/set_spawnpoint/refresh
data remove storage pandamium:local functions."pandamium:detect/set_spawnpoint/*"

advancement revoke @s only pandamium:detect/set_spawnpoint
