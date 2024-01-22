scoreboard players operation <my_checkpoint> variable = @s parkour.checkpoint

scoreboard players set <parkour.allow_teleport> variable 1

tag @s add source
execute as @e[type=marker,tag=parkour.node,x=-512,y=-64,z=-512,dx=1024,dy=384,dz=1024] if score @s parkour.node_id = <my_checkpoint> variable at @s as @a[tag=source,limit=1] run function pandamium:utils/teleport/here
tag @s remove source

execute if score @s parkour.checkpoint matches 200 in overworld positioned -292.5 125.00 148.5 rotated -180 10 run function pandamium:utils/teleport/here

scoreboard players reset <parkour.allow_teleport> variable

execute as @e[type=marker,tag=parkour.replace_block] run function pandamium:impl/parkour/replace_block with entity @s data
