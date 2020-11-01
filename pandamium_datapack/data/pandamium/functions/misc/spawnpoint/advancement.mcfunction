advancement revoke @s only pandamium:spawnpoint_set_via_respawn_anchor
advancement revoke @s only pandamium:spawnpoint_set_via_bed
tag @s add spawnpoint_advancement
schedule function pandamium:misc/spawnpoint/advancement_ 1 append
#only check the player nbt data at most once per tick, in case someone spam clicks their bed/respawn anchor
