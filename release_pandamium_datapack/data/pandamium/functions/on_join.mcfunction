execute unless score @s id matches 1.. run function pandamium:misc/assign_id

execute if score @s on_join.tp_to_spawn matches 1 in overworld run tp 0 65 0
execute if score @s on_join.reset_spawnpoint matches 1 in overworld run spawnpoint 0 65 0
scoreboard players reset @s on_join.tp_to_spawn
scoreboard players reset @s on_join.reset_spawnpoint

# Triggers
scoreboard players enable @s item_font
scoreboard players enable @s sign_font
scoreboard players enable @s world_info

#

scoreboard players set @s detect.leave_game 0
