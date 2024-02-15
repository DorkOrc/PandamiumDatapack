# arguments: x, y, z

$execute unless loaded $(x) $(y) $(z) run return 0

$execute positioned $(x) 0 $(z) positioned ~-30 ~ ~-30 run kill @e[type=#pandamium:remove_at_enderman_farm,dx=59,dy=255,dz=59]
$execute positioned $(x) 0 $(z) positioned ~-30 ~ ~-30 run scoreboard players set @a[dx=59,dy=255,dz=59] temp_1 1
