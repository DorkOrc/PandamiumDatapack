kill
function pandamium:misc/teleport/random/loop

execute store result score <rtp_x> variable run data get entity @s Pos[0]
execute store result score <rtp_y> variable run data get entity @s Pos[1]
execute store result score <rtp_z> variable run data get entity @s Pos[2]

execute in pandamium:staff_world run tp @a[tag=selected_player] 29999999 19999999 29999999
execute positioned as @s run tp @a[tag=selected_player] ~ ~ ~
xp add @a[tag=selected_player] 0

tellraw @a[tag=selected_player] [{"text":"","color":"green"},{"text":"[Info]","color":"blue"}," You have been teleported to ",[{"score":{"name":"<rtp_x>","objective":"variable"},"color":"aqua"}," ",{"score":{"name":"<rtp_y>","objective":"variable"}}," ",{"score":{"name":"<rtp_z>","objective":"variable"}}],"!"]
