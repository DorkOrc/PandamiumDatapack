scoreboard players set @s hidden 1
scoreboard players set @s[gamemode=spectator] hidden 2

execute if score <total_equipped_items> variable matches 1.. in pandamium:staff_world run function pandamium:misc/unequip_armour_and_hands

effect give @s invisibility 10 0 true
gamemode creative

# `pandamium:misc/hide/try_hide` sets `pandamium:temp pos` from pandamium:temp count.nbt.Pos
execute store result score @s pre_hide_pos_x run data get storage pandamium:temp pos[0]
execute store result score @s pre_hide_pos_y run data get storage pandamium:temp pos[1]
execute store result score @s pre_hide_pos_z run data get storage pandamium:temp pos[2]
scoreboard players operation @s pre_hide_pos_d = @s in_dimension
