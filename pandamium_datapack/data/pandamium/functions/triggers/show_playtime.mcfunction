execute if score @s show_playtime matches 1 at @s run function pandamium:misc/get_playtime
execute if score @s show_playtime matches 2.. if score @s staff_perms matches 1.. at @a if score @s show_playtime = @p id run function pandamium:misc/get_playtime

scoreboard players reset @s show_playtime
scoreboard players enable @s show_playtime
