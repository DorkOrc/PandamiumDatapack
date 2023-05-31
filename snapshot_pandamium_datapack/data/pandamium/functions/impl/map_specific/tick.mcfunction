# TARDIS
execute as @a[x=-19.0625,y=90,z=-18.0625,dx=.125,dy=2,dz=.125,gamemode=!spectator] at @s run tp @s -86.5 44 30.4375 ~45 0
execute as @a[x=-87.0625,y=44,z=30.9375,dx=.125,dy=2,dz=.125,gamemode=!spectator] at @s run tp @s -17.5 90 -16.5 ~-45 0

execute if score <5_tick_loop> global matches 4 run function pandamium:impl/map_specific/every_5_ticks
