execute if score @s parkour.checkpoint matches 0.. run function pandamium:misc/parkour/actions/cancel/teleporting
spectate

gamerule showDeathMessages false
kill
gamerule showDeathMessages true

execute in overworld run tp 0 1000 0
gamemode survival @s
