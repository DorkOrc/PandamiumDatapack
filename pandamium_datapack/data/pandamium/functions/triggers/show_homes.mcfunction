execute unless score @s staff_perms matches 1.. run scoreboard players set @s show_homes 1
execute if score @s show_homes matches 1 run scoreboard players operation @s show_homes = @s id

execute at @a if score @s show_homes = @p id run function pandamium:misc/list_homes

scoreboard players reset @s show_homes
scoreboard players enable @s show_homes
