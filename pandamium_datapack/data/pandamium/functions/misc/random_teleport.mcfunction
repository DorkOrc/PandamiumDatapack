spreadplayers 0 0 0 25000 false @s

execute unless entity @s[x=-5000,y=0,z=-5000,dx=10000,dy=256,dz=10000] store result score <rtp_x> variable run data get entity @s Pos[0]
execute unless entity @s[x=-5000,y=0,z=-5000,dx=10000,dy=256,dz=10000] store result score <rtp_y> variable run data get entity @s Pos[1]
execute unless entity @s[x=-5000,y=0,z=-5000,dx=10000,dy=256,dz=10000] store result score <rtp_z> variable run data get entity @s Pos[2]
execute unless entity @s[x=-5000,y=0,z=-5000,dx=10000,dy=256,dz=10000] run tellraw @s [{"text":"","color":"green"},{"text":"[Info]","color":"blue"}," You have been teleported to ",[{"score":{"name":"<rtp_x>","objective":"variable"},"color":"aqua"}," ",{"score":{"name":"<rtp_y>","objective":"variable"}}," ",{"score":{"name":"<rtp_z>","objective":"variable"}}],"!"]

execute if entity @s[x=-5000,y=0,z=-5000,dx=10000,dy=256,dz=10000] run function pandamium:random_teleport
