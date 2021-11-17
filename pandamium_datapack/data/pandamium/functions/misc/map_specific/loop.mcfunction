# RTP
particle glow -15.0 138 13.0 2 2 2 0.1 3

# Sauna
particle campfire_cosy_smoke -40 128 -6 2 1.0 2 0.01 3

# Nether Portal
particle crimson_spore -7.0 145.5 29.5 3 3 3 0.1 8

# Barrier in TARDIS
particle dust 0.5 0 0 1 -51 49.5 42 0.25 0.25 0.25 0 1

# TARDIS
tp @a[x=-46.0625,y=176,z=48.9375,dx=0.125,dy=2,dz=0.125] -86.5 44 30.4375 180 0
tp @a[x=-87.0625,y=44,z=30.9375,dx=0.125,dy=2,dz=0.125] -44.655 176 48.55 -137.2 21

#

scoreboard players add @a[scores={parkour_checkpoint=0..}] parkour_ticks 5
execute as @a[scores={parkour_checkpoint=0..,show_parkour_timer=0}] run title @s actionbar [{"text":"/trigger ","color":"gray"},{"text":"parkour","color":"aqua"}]
execute as @a[scores={parkour_checkpoint=0..,show_parkour_timer=1}] run function pandamium:misc/map_specific/parkour/timer
execute if entity @a[scores={parkour_checkpoint=0..},limit=1] at @e[type=marker,tag=parkour.checkpoint,x=-512,y=-64,z=-512,dx=1024,dy=384,dz=1024,scores={id=1..}] run particle falling_dust gold_block ~ ~0.5 ~ 0 0 0 0 1 normal @a[scores={parkour_checkpoint=0..}]
particle falling_dust diamond_block -45 142.5 -89

execute if entity @a[x=-18.5,y=-32,z=130,distance=..64] run function pandamium:misc/map_specific/moving_logs
