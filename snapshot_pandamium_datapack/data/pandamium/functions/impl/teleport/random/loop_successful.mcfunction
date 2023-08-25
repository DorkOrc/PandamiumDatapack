execute store result score <rtp_x> variable run data get entity @s Pos[0]
execute store result score <rtp_y> variable run data get entity @s Pos[1]
execute store result score <rtp_z> variable run data get entity @s Pos[2]

execute positioned as @s positioned over motion_blocking_no_leaves as @a[tag=teleport.random.player,limit=1] rotated as @s run function pandamium:impl/teleport/main
execute at @s run playsound block.portal.travel ambient @s

execute as @a[tag=teleport.random.player,limit=1] unless score @s hide_coordinates matches 1 run return run tellraw @s [{"text":"","color":"green"},{"text":"[RTP]","color":"blue"}," You have been teleported to ",[{"score":{"name":"<rtp_x>","objective":"variable"},"color":"aqua"}," ",{"score":{"name":"<rtp_y>","objective":"variable"}}," ",{"score":{"name":"<rtp_z>","objective":"variable"}}],"!"]
execute as @a[tag=teleport.random.player,limit=1] if score @s hide_coordinates matches 1 run return run tellraw @s [{"text":"","color":"green"},{"text":"[RTP]","color":"blue"}," You have been teleported to ",[{"score":{"name":"<rtp_x>","objective":"variable"},"color":"aqua","obfuscated":true}," ",{"score":{"name":"<rtp_y>","objective":"variable"}}," ",{"score":{"name":"<rtp_z>","objective":"variable"}}]," (see log for coordinates)!"]

