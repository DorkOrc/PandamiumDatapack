# Ambient Snowflakes
particle snowflake 0 100 0 10 10 10 0 4

# RTP
particle glow 11 91 -11 1.5 1.5 1.5 0.1 4
execute as @a[x=11,y=91,z=-11,distance=..2.5,gamemode=!spectator] run function pandamium:misc/teleport/random/main

# Windtunnel
particle snowflake 0 120 27 3 15 3 0 20
execute as @a[x=-7,y=90,z=20,dx=14,dy=55,dz=14,gamemode=!spectator,x_rotation=-90..0] at @s positioned 0 ~ 27 if entity @s[distance=..7.5] run effect give @s levitation 1 10 true
execute as @a[x=-7,y=90,z=20,dx=14,dy=55,dz=14,gamemode=!spectator,x_rotation=0..90] at @s positioned 0 ~ 27 if entity @s[distance=..7.5] run effect give @s slow_falling 1 0 true

# Sauna
particle campfire_cosy_smoke -40 128 -6 2 1.0 2 0.01 3

# Barrier in TARDIS
particle dust 0.5 0 0 1 -51 49.5 42 0.25 0.25 0.25 0 1

# TARDIS
tp @a[x=-19.0625,y=90,z=-18.0625,dx=.125,dy=2,dz=.125,gamemode=!spectator] -86.5 44 30.4375 180 0
tp @a[x=-87.0625,y=44,z=30.9375,dx=.125,dy=2,dz=.125,gamemode=!spectator] -17.5 90 -16.5 -45 0

# Moving Log
execute if entity @a[x=-18.5,y=-32,z=130,distance=..64,gamemode=!spectator] run function pandamium:misc/map_specific/moving_log

#

scoreboard players add @a[scores={parkour_checkpoint=0..}] parkour_ticks 5
execute as @a[scores={parkour_checkpoint=0..}] unless score @s hide_parkour_timer matches 1 run function pandamium:misc/map_specific/parkour/timer
execute as @a[scores={parkour_checkpoint=0..}] if score @s hide_parkour_timer matches 1 run title @s actionbar [{"text":"/trigger ","color":"gray"},{"text":"parkour","color":"aqua"}]
execute if entity @a[scores={parkour_checkpoint=0..},limit=1] at @e[type=marker,tag=parkour.checkpoint,x=-512,y=-64,z=-512,dx=1024,dy=384,dz=1024,scores={id=1..}] run particle falling_dust gold_block ~ ~0.5 ~ 0 0 0 0 1 normal @a[scores={parkour_checkpoint=0..}]
particle falling_dust diamond_block -45 142.5 -89
