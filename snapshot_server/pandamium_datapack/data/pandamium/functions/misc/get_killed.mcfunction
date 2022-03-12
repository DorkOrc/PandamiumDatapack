execute if score @s parkour.checkpoint matches 0.. run function pandamium:misc/map_specific/parkour/end_parkour

spectate

gamerule showDeathMessages false
kill
gamerule showDeathMessages true

execute unless score @s staff_perms matches 2.. run gamemode survival @s[gamemode=spectator]
