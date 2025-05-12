execute unless loaded ~ ~ ~ run forceload add ~ ~
execute unless loaded ~ ~ ~ run return 1

execute positioned over motion_blocking_no_leaves unless block ~ ~1 ~ air run return 0
execute positioned over motion_blocking_no_leaves if block ~ ~ ~ #pandamium:rtp_invalid_blocks run return 0
execute positioned over motion_blocking_no_leaves if block ~ ~-1 ~ #pandamium:rtp_invalid_blocks run return 0
execute positioned over motion_blocking_no_leaves if block ~ ~-1 ~ #pandamium:no_solid_collision run return 0

execute positioned over motion_blocking_no_leaves store result storage pandamium:queue selected.entry.pos.y int 1 run function pandamium:utils/get/position/y
execute positioned over motion_blocking_no_leaves run function pandamium:impl/queue/actions/rtp/teleport_player with storage pandamium:queue selected.entry.pos

return 2
