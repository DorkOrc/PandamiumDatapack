tag @s add running_function
execute as @e[type=marker,tag=parkour.checkpoint,x=-512,y=-64,z=-512,dx=1024,dy=384,dz=1024] if score @s id = @p[tag=running_function] parkour_checkpoint at @s run tp @p[tag=running_function] ~ ~ ~
tag @s remove running_function
