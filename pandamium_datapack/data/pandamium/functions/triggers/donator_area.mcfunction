execute unless score @s gameplay_perms matches 6.. run function pandamium:misc/print_donator_only_message

execute if score @s gameplay_perms matches 6.. if score @s parkour.checkpoint matches 0.. run function pandamium:misc/map_specific/parkour/end_parkour

execute if score @s gameplay_perms matches 6.. run function pandamium:misc/teleport/spawn
execute if score @s gameplay_perms matches 6.. in overworld run tp @s -101 -50 -40 0 0

scoreboard players reset @s donator_area
scoreboard players enable @s donator_area
