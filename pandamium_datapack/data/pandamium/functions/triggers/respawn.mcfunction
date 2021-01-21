gamerule showDeathMessages false
kill
gamerule showDeathMessages true
execute unless score @s staff_perms matches 2.. run gamemode survival @s[gamemode=spectator]
scoreboard players reset @s respawn
scoreboard players enable @s respawn
