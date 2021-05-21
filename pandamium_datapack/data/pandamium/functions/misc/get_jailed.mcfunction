scoreboard players set @s jailed 1

execute store result score @s pre_jail_pos_x run data get entity @s Pos[0]
execute store result score @s pre_jail_pos_y run data get entity @s Pos[1]
execute store result score @s pre_jail_pos_z run data get entity @s Pos[2]
scoreboard players operation @s pre_jail_pos_d = @s in_dimension
