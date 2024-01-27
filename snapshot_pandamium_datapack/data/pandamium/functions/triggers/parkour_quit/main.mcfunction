scoreboard players set <parkour.allow_teleport> variable 1
execute if score @s parkour.checkpoint matches 200..299 run function pandamium:impl/parkour/parkour_3/tp_to_start
scoreboard players set <parkour.allow_teleport> variable 0

function pandamium:impl/parkour/actions/cancel/quit

scoreboard players reset @s parkour_quit
