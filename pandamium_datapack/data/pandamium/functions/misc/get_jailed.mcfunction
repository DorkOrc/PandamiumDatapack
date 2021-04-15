scoreboard players set @s jailed 1

execute store result score @s pre_jail_pos_x run data get entity @s Pos[0]
execute store result score @s pre_jail_pos_y run data get entity @s Pos[1]
execute store result score @s pre_jail_pos_z run data get entity @s Pos[2]
execute if data entity @s {Dimension:'minecraft:the_nether'} run scoreboard players set @s pre_jail_pos_d -1
execute if data entity @s {Dimension:'minecraft:overworld'} run scoreboard players set @s pre_jail_pos_d 0
execute if data entity @s {Dimension:'minecraft:the_end'} run scoreboard players set @s pre_jail_pos_d 1
execute if data entity @s {Dimension:'pandamium:staff_world'} run scoreboard players set @s pre_jail_pos_d 2
