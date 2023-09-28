$execute as $(username) if score @s parkour.checkpoint matches 0.. run function pandamium:impl/parkour/actions/cancel/generic

execute at @s run function pandamium:utils/get/position
scoreboard players operation @s pre_jail_pos_x = <x> variable
scoreboard players operation @s pre_jail_pos_y = <y> variable
scoreboard players operation @s pre_jail_pos_z = <z> variable
execute store result score @s pre_jail_pos_d at @s run function pandamium:utils/get/dimension_id
