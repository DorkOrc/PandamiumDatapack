# Ambient Snowflakes
particle snowflake 0 100 0 10 10 10 0 4

# RTP
particle glow 11 91 -11 1.5 1.5 1.5 0.1 4
execute as @a[x=11,y=91,z=-11,distance=..2.5,gamemode=!spectator] unless score @s rtp_cooldown matches 1.. run function pandamium:misc/teleport/random_with_feedback

# Windtunnel
particle snowflake 0 120 27 3 15 3 0 20
execute as @a[x=-7,y=90,z=20,dx=14,dy=60,dz=14,gamemode=!spectator,x_rotation=-90..0] at @s run effect give @s[x=0,z=27,distance=..7.5] levitation 1 15 true
execute as @a[x=-7,y=90,z=20,dx=14,dy=50,dz=14,gamemode=!spectator,x_rotation=0..90] at @s run effect give @s[x=0,z=27,distance=..7.5] slow_falling 1 0 true

# Sauna
particle campfire_cosy_smoke -40 128 -6 2 1.0 2 0.01 3

# Barrier in TARDIS
particle dust 0.5 0 0 1 -51 49.5 42 0.25 0.25 0.25 0 1

# Moving Log
execute if entity @a[x=-18.5,y=-32,z=130,distance=..64,gamemode=!spectator] run function pandamium:impl/map_specific/moving_log

# Monstrosity Parkour Entrance
particle dust 0 0 1 1 -33 45 -109 1.5 1.5 1.5 1 1

# Nether-Roof Teleporter
execute in the_nether run particle vibration 0 127 9 200 0.5 60 9.5 0.5 0.5 0.5 1 1
execute in the_nether positioned 0 68 9 run tp @a[distance=..2] 0 129 9

schedule function pandamium:impl/map_specific/main_loop 5t