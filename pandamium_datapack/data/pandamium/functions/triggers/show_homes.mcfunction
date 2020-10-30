execute unless score @s staff_perms matches 1.. run scoreboard players set @s homes 1
execute if score @s homes matches 1 run scoreboard players operation @s homes = @s id

execute at @a if score @s homes = @p id run function pandamium:misc/list_homes

scoreboard players reset @s homes
scoreboard players enable @s homes
