execute if score @s show_playtime matches 1 at @s run function pandamium:misc/get_playtime

scoreboard players set @s temp_1 0
execute at @a if score @s show_playtime = @p id run scoreboard players set @s temp_1 1
execute if score @s temp_1 matches 0 run tellraw @s [{"text":"","color":"red"},{"text": "[Show Playtime]", "color":"dark_red"}," No player found with that ID."]

execute if score @s show_playtime matches 2.. if score @s staff_perms matches 1.. at @a if score @s show_playtime = @p id run function pandamium:misc/get_playtime

scoreboard players reset @s show_playtime
scoreboard players enable @s show_playtime
