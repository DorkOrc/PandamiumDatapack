execute at @s[gamemode=!spectator] run function pandamium:misc/teleport/anti_tp_exploit
#spreadplayers fails to change the entity dimension (https://bugs.mojang.com/browse/MC-181832)
tp ~ ~ ~

function pandamium:misc/teleport/random/loop

execute store result score <rtp_x> variable run data get entity @s Pos[0]
execute store result score <rtp_y> variable run data get entity @s Pos[1]
execute store result score <rtp_z> variable run data get entity @s Pos[2]
tellraw @s [{"text":"","color":"green"},{"text":"[Info]","color":"blue"}," You have been teleported to ",[{"score":{"name":"<rtp_x>","objective":"variable"},"color":"aqua"}," ",{"score":{"name":"<rtp_y>","objective":"variable"}}," ",{"score":{"name":"<rtp_z>","objective":"variable"}}],"!"]
