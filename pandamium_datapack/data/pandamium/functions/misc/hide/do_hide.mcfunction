gamemode creative

# `pandamium:misc/hide/try_hide` sets `pandamium:temp NBT` from entity @s
execute store result score @s pre_hide_pos_x run data get storage pandamium:temp NBT.Pos[0]
execute store result score @s pre_hide_pos_y run data get storage pandamium:temp NBT.Pos[1]
execute store result score @s pre_hide_pos_z run data get storage pandamium:temp NBT.Pos[2]
scoreboard players operation @s pre_hide_pos_d = @s in_dimension
