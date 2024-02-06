scoreboard players set <parkour.allow_teleport> variable 1
execute if score @s parkour.checkpoint matches 200..299 in overworld positioned -292.5 128.0 153.5 rotated 0 0 run function pandamium:utils/teleport/here
scoreboard players set <parkour.allow_teleport> variable 0

function pandamium:impl/parkour/actions/cancel/quit

scoreboard players reset @s parkour_quit
