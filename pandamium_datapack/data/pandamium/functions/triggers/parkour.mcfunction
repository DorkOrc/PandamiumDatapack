execute unless score @s parkour_checkpoint matches 0.. run function pandamium:misc/teleport/spawn
execute unless score @s parkour_checkpoint matches 0.. in overworld run tp @s -42.5 143 -90.5 45 12.5

execute if score @s parkour_checkpoint matches 0.. run function pandamium:misc/map_specific/parkour/return_to_last_checkpoint

scoreboard players reset @s parkour
scoreboard players enable @s parkour
