scoreboard players set @s jailed 1

scoreboard players operation @s pre_jail_pos_x = @s last_position.x
scoreboard players operation @s pre_jail_pos_y = @s last_position.y
scoreboard players operation @s pre_jail_pos_z = @s last_position.z
scoreboard players operation @s pre_jail_pos_d = @s last_position.d

execute if score @s parkour.checkpoint matches 0.. run function pandamium:impl/parkour/actions/cancel/generic

function pandamium:player/update_tablist_value
