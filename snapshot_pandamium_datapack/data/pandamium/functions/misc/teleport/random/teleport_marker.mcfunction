kill
function pandamium:misc/teleport/random/loop

execute store result score <rtp_x> variable run data get entity @s Pos[0]
execute store result score <rtp_y> variable run data get entity @s Pos[1]
execute store result score <rtp_z> variable run data get entity @s Pos[2]

execute positioned as @s as @a[tag=teleport.random.selected_player] rotated as @s run function pandamium:misc/teleport/main

tellraw @a[tag=teleport.random.selected_player] [{"text":"","color":"green"},{"text":"[Info]","color":"blue"}," You have been teleported to ",[{"score":{"name":"<rtp_x>","objective":"variable"},"color":"aqua"}," ",{"score":{"name":"<rtp_y>","objective":"variable"}}," ",{"score":{"name":"<rtp_z>","objective":"variable"}}],"!"]
