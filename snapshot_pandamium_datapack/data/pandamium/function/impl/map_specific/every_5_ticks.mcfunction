# rtp
execute in pandamium:hub as @a[x=-291,y=128,z=183,dx=4,dy=4,dz=0,gamemode=!spectator] unless score @s rtp_cooldown matches 1.. run function pandamium:misc/rtp

# map-art teleport
execute in pandamium:hub as @a[x=-205,y=140,z=106,dx=1,dy=1,dz=0,gamemode=!spectator] rotated as @s positioned -188 -17 107 rotated ~180 ~ run function pandamium:utils/teleport/here

# portalling well teleport
execute in pandamium:hub as @a[x=-52,y=70,z=137,dx=3,dy=0.5,dz=3,gamemode=!spectator] rotated as @s positioned -61 48 127 run function pandamium:utils/teleport/here

# nether portal
execute in pandamium:hub as @a[x=-255,y=136,z=166,dx=0,dy=4,dz=4] run function pandamium:misc/warp/nether_spawn

# end portal
execute in pandamium:hub as @a[x=-324,y=132.99,z=184,dx=5,dy=0,dz=6] run function pandamium:misc/warp/end_platform
