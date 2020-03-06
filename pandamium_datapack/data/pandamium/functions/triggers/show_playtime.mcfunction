execute unless score @s show_playtime matches 2.. run function pandamium:misc/get_playtime
execute at @a if score @s staff_perms matches 1.. if score @s show_playtime matches 2.. if score @s show_playtime = @p id run function pandamium:misc/get_playtime_other

scoreboard players reset @s show_playtime
scoreboard players enable @s show_playtime
