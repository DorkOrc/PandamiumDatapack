gamerule showDeathMessages false
kill
gamerule showDeathMessages true
execute unless score @s[gamemode=spectator] staff_perms matches 2.. run tp @s 0 1000 0
execute unless score @s[gamemode=spectator] staff_perms matches 2.. run gamemode survival
scoreboard players reset @s respawn
scoreboard players enable @s respawn
