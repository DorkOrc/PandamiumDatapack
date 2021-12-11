scoreboard players reset @s custom.aviate_one_cm
scoreboard players reset @s used.ender_pearl

scoreboard players set <parkour.can_run> variable 0
execute if score @s parkour_checkpoint matches 0.. store success score <parkour.can_run> variable run function pandamium:misc/map_specific/parkour/end_parkour
execute if score <parkour.can_run> variable matches 1 run function pandamium:misc/teleport/spawn
execute if score <parkour.can_run> variable matches 1 run tp @s -42.5 143 -90.5 45 12.5
execute if score <parkour.can_run> variable matches 1 run tellraw @s {"text":"(Cheating Detected)","color":"red"}

advancement revoke @s only pandamium:parkour/cheated
