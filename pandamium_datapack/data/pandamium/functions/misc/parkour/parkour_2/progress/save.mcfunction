scoreboard players operation @s parkour_2.saved_time = @s parkour.timer_ticks
data modify storage pandamium:temp Pos set from entity @s Pos
execute store result score @s parkour_2.saved_x run data get storage pandamium:temp Pos[0]
execute store result score @s parkour_2.saved_y run data get storage pandamium:temp Pos[1]
execute store result score @s parkour_2.saved_z run data get storage pandamium:temp Pos[2]
