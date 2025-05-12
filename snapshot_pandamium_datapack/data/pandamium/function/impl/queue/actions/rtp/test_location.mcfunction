execute unless loaded ~ ~ ~ unless data storage pandamium:queue selected.entry.pos{loading:1b} run forceload add ~ ~
execute unless loaded ~ ~ ~ run data modify storage pandamium:queue selected.entry.pos.loading set value 1b
execute unless loaded ~ ~ ~ run return 1

# location must not be an ocean biome
execute if biome ~ ~ ~ #minecraft:is_ocean run return 0

# location must have enough space for the player
execute positioned over motion_blocking_no_leaves unless block ~ ~1 ~ air run return 0
execute positioned over motion_blocking_no_leaves unless block ~ ~0 ~ #pandamium:no_solid_collision unless block ~ ~0 ~ minecraft:snow[layers=1] run return 0

# location must not be harmful to the player
execute positioned over motion_blocking_no_leaves if block ~ ~-1 ~ #pandamium:no_solid_collision run return 0
execute positioned over motion_blocking_no_leaves if block ~ ~ ~ #pandamium:rtp_invalid_blocks run return 0
execute positioned over motion_blocking_no_leaves if block ~ ~-1 ~ #pandamium:rtp_invalid_blocks run return 0
execute positioned over motion_blocking_no_leaves if block ~ ~-1 ~ snow_block if predicate {condition:"minecraft:location_check",offsetY:-1,predicate:{structures:"minecraft:village_snowy"}} run return 0

# success
execute positioned over motion_blocking_no_leaves store result storage pandamium:queue selected.entry.pos.y int 1 run function pandamium:utils/get/position/y
execute positioned over motion_blocking_no_leaves run function pandamium:impl/queue/actions/rtp/teleport_player with storage pandamium:queue selected.entry.pos
return 2
