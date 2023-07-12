# rtp
execute as @a[x=-291,y=128,z=183,dx=4,dy=4,dz=0,gamemode=!spectator] unless score @s rtp_cooldown matches 1.. run function pandamium:misc/rtp/teleport_with_feedback

# map-art teleport
execute as @a[x=-205,y=140,z=106,dx=1,dy=1,dz=0,gamemode=!spectator] rotated as @s run tp @s -188 -17 107 ~180 ~

# portalling well teleport
tp @a[x=-52,y=70,z=137,dx=3,dy=0.5,dz=3,gamemode=!spectator] -61 48 127

# nether roof teleport
execute in the_nether run tp @a[x=34,y=36,z=-11,dx=0,dy=0,dz=0,gamemode=!spectator] 0 128 0

# nether portal
execute in overworld as @a[x=-255,y=136,z=166,dx=0,dy=4,dz=4] in the_nether run tp @s 17.5 37.5 -13.5 -90 0
execute in the_nether as @a[x=15,y=38,z=-16,dx=0,dy=4,dz=4] in overworld run tp @s -256.5 135.5 168.5 90 0
