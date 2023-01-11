function pandamium:misc/raycast/block/setup_generic
execute at @s anchored eyes positioned ^ ^ ^ as @e[type=marker,distance=..0.01,tag=raycast.ray,limit=1] run function pandamium:misc/raycast/block/containers/as_marker
