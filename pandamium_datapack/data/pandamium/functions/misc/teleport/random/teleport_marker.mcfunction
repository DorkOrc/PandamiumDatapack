kill
function pandamium:misc/teleport/random/loop

execute store result score <rtp_x> temp run data get entity @s Pos[0]
execute store result score <rtp_y> temp run data get entity @s Pos[1]
execute store result score <rtp_z> temp run data get entity @s Pos[2]

execute positioned as @s as @a[tag=teleport.random.selected_player] rotated as @s run function pandamium:misc/teleport/main

tellraw @a[tag=teleport.random.selected_player] [{"text":"","color":"green"},{"text":"[Info]","color":"blue"}," You have been teleported to ",[{"score":{"name":"<rtp_x>","objective":"temp"},"color":"aqua"}," ",{"score":{"name":"<rtp_y>","objective":"temp"}}," ",{"score":{"name":"<rtp_z>","objective":"temp"}}],"!"]
