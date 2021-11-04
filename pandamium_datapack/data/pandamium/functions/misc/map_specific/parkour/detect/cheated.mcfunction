scoreboard players reset @s parkour.aviate
scoreboard players reset @s parkour.used_ender_pearl

execute if score @s parkour_checkpoint matches 0.. run function pandamium:misc/map_specific/parkour/end_parkour
execute if score @s parkour_checkpoint matches 0.. run function pandamium:misc/teleport/spawn

advancement revoke @s only pandamium:parkour/cheated
