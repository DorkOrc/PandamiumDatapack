# arguments: dimension, x, y, z, yaw, pitch

$execute in $(dimension) positioned 0.0 0.0 0.0 unless loaded ~$(x) ~$(y) ~$(z) run return fail
$execute in $(dimension) positioned 0.0 0.0 0.0 positioned ~$(x) ~$(y) ~$(z) as @e[type=text_display,distance=..0.01,tag=pandamium.leader_board_hologram] rotated $(yaw) $(pitch) run return run function pandamium:impl/leader_boards/holograms/update_hologram
$execute in $(dimension) positioned 0.0 0.0 0.0 positioned ~$(x) ~$(y) ~$(z) summon minecraft:text_display rotated $(yaw) $(pitch) run return run function pandamium:impl/leader_boards/holograms/update_hologram
