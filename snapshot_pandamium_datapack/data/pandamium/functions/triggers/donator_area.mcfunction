execute unless score @s gameplay_perms matches 6.. run function pandamium:utils/print_donator_only_message

execute if score @s gameplay_perms matches 6.. run function pandamium:misc/teleport/warp/spawn
execute if score @s gameplay_perms matches 6.. in overworld run tp @s -101 -50 -40 0 0

scoreboard players reset @s donator_area
scoreboard players enable @s donator_area
