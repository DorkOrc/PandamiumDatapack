tag @s add running_function
execute if score @s parkour_checkpoint matches 1.. as @e[type=marker,tag=parkour.checkpoint,x=-512,y=-64,z=-512,dx=1024,dy=384,dz=1024] if score @s id = @p[tag=running_function] parkour_checkpoint at @s run tp @p[tag=running_function] ~ ~ ~
tag @s remove running_function

execute if score @s parkour_checkpoint matches 0 run scoreboard players set @s parkour.timer_ticks 0
execute if score @s parkour_checkpoint matches 0 run tp @s -42.5 143 -90.5 45 12.5
