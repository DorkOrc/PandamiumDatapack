# elevators
execute if loaded -196 100 203 if entity @a[x=-196,y=100,z=203,distance=..30,gamemode=!spectator,limit=1] run function pandamium:impl/map_specific/elevator/tick_mineshaft_area
execute if loaded -312 125 122 if entity @a[x=-312,y=125,z=122,distance=..30,gamemode=!spectator,limit=1] run function pandamium:impl/map_specific/elevator/tick_maproom_area

# wind tunnel
effect clear @a[x=-84,y=108,z=426,dx=6,dy=0,dz=6,gamemode=!spectator] levitation
execute as @a[x=-84,y=92,z=426,dx=6,dy=15,dz=6,gamemode=!spectator,x_rotation=-90..-1] at @s run effect give @s[x=-81,z=429,distance=..3.5] levitation 1 6 true
execute as @a[x=-84,y=92,z=426,dx=6,dy=15,dz=6,gamemode=!spectator,x_rotation=0..90] at @s run effect give @s[x=-81,z=429,distance=..3.5] slow_falling 1 0 true

# portal cauldron effects
#execute at @e[type=item_display,tag=custom_block.portal_cauldron,tag=custom_block.base] run particle portal ~ ~1 ~ 0.18 0.95 0.18 0.01 1
particle portal -50 76 138 0.18 0.95 0.18 0.01 1
particle portal -280 113 79 0.18 0.95 0.18 0.01 1

# large portal effects
#execute at @e[type=item_display,tag=custom_block.huge_portal,tag=custom_block.base] run particle portal ~ ~2.5 ~ 1.5 1.5 1.5 1 5
particle portal -254.5 139 168.5 1.5 1.5 1.5 1 5
particle portal 15 40.5 -14 1.5 1.5 1.5 1 5

# rtp portal effect
particle dust 0 1 1 1 -288.5 130.5 183.5 1.5 1.5 0.1 0.5 5 force
particle dust 0 0.6 0 1 -288.5 130.5 183.5 1.5 1.5 0.1 0.5 5 force

# hawk's particles
particle dragon_breath -40.42 82.00 181.40 1 1 1 0.1 1
particle dragon_breath -35.00 74.54 155.49 1 1 1 0.1 1

# tec's particles
particle portal 30 72 253 1 2 1 0.1 1 

# sonny fox particles
particle smoke -83.53 94.50 272.54
particle flame -83.53 94.20 272.54
particle smoke -83.70 89.80 294.05
particle smoke -82.95 89.8 293.23
particle flame -84.9 90.53 290.48
particle flame -86.48 90.55 292.1

# pond particles
particle bubble_pop -231.53 157.00 207.57 1 1 1 0.1 1

# ved's particles
particle electric_spark -79.44 161.00 151.22 1 1 1 0.1 1
particle electric_spark -79.54 159.00 171.23 5 5 5 1 1
particle electric_spark -79.62 160.00 163.37 1 1 1 0.1 1
particle electric_spark -79.44 159.00 170.55 1 1 1 0.1 1

# waterfall particles
particle cloud -155.28 133.25 92.71 1 0.5 0.5 0 2
particle cloud -322.7 135.25 180.0 0.5 0.5 1 0 1
particle cloud -327.0 139.25 183.0 0.5 0.3 0.3 0 1
particle cloud -236.0 148.25 153.0 0.5 0.5 0.5 0 1

# ravine particles
particle dripping_obsidian_tear -41.63 62.00 118.44 4 2 2 10 1
particle dripping_obsidian_tear -27.00 62.24 128.27 4 2 2 10 1
