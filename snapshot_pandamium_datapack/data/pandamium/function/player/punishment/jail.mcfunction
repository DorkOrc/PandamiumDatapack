scoreboard players set @s jailed 1

execute positioned as @s run function pandamium:utils/get/position
scoreboard players operation @s pre_jail_pos_x = <x> variable
scoreboard players operation @s pre_jail_pos_y = <y> variable
scoreboard players operation @s pre_jail_pos_z = <z> variable
execute at @s store result score @s pre_jail_pos_d run function pandamium:utils/get/dimension_id

execute if score @s parkour.checkpoint matches 0.. run function pandamium:impl/parkour/actions/cancel/generic
