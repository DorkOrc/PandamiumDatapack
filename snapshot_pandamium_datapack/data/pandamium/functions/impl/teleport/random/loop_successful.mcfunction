execute store result score <rtp_x> variable run data get entity @s Pos[0]
execute store result score <rtp_y> variable run data get entity @s Pos[1]
execute store result score <rtp_z> variable run data get entity @s Pos[2]

execute positioned as @s as @a[tag=teleport.random.player,limit=1] rotated as @s run function pandamium:misc/teleport/here
tellraw @a[tag=teleport.random.player,limit=1] [{"text":"","color":"green"},{"text":"[RTP]","color":"blue"}," You have been teleported to ",[{"score":{"name":"<rtp_x>","objective":"variable"},"color":"aqua"}," ",{"score":{"name":"<rtp_y>","objective":"variable"}}," ",{"score":{"name":"<rtp_z>","objective":"variable"}}],"!"]

execute at @s run playsound block.portal.travel ambient @s
