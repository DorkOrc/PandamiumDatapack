execute at @a if score @s get_homes = @p id run function pandamium:misc/list_homes

scoreboard players reset @s get_homes
scoreboard players enable @s get_homes
