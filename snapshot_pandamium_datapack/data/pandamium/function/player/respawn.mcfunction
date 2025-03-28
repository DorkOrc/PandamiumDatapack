execute if score @s parkour.checkpoint matches 0.. run function pandamium:impl/parkour/actions/cancel/teleporting
spectate

gamerule showDeathMessages false
kill
gamerule showDeathMessages true

execute unless score @s staff_perms matches 2.. run gamemode survival @s[gamemode=spectator]
