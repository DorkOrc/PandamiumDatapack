scoreboard players operation @s parkour_2.saved_time = @s parkour.timer_ticks
scoreboard players operation @s parkour_2.saved_checkpoint = @s parkour.checkpoint
data modify storage pandamium:temp Pos set from entity @s Pos
execute store result score @s parkour_2.saved_x run data get storage pandamium:temp Pos[0]
execute store result score @s parkour_2.saved_y run data get storage pandamium:temp Pos[1]
execute store result score @s parkour_2.saved_z run data get storage pandamium:temp Pos[2]

execute at @s unless block ~ ~ ~ #pandamium:air_like if block ~ ~1 ~ #pandamium:air_like run scoreboard players add @s parkour_2.saved_y 1
