scoreboard players operation <my_checkpoint> variable = @s parkour.checkpoint

tag @s add running_function
execute as @e[type=marker,tag=parkour.node,x=-512,y=-64,z=-512,dx=1024,dy=384,dz=1024] if score @s parkour.node_id = <my_checkpoint> variable at @s run tp @p[tag=running_function] ~ ~ ~
tag @s remove running_function

execute if score @s parkour.checkpoint matches 101..199 at @s facing -7.5 ~ -115 run tp @s ^ ^ ^0.3
execute if score @s parkour.checkpoint matches 0 run function pandamium:misc/parkour/parkour_1/tp_to_start
