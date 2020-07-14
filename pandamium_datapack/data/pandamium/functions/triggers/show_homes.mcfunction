execute if score @s show_homes matches 1 run scoreboard players operation @s show_homes = @s id

scoreboard players set @s temp_1 0
execute at @a if score @s show_homes = @p id run scoreboard players set @s temp_1 1
execute if score @s temp_1 matches 0 run tellraw @s [{"text":"","color":"red"},{"text": "[Show Homes]", "color":"dark_red"}," No player found with that ID."]

execute at @a if score @s show_homes = @p id run function pandamium:misc/list_homes

scoreboard players reset @s show_homes
scoreboard players enable @s show_homes
