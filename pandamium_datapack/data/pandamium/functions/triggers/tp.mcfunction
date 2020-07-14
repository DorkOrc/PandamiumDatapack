scoreboard players set @s temp_1 0
execute at @a if score @s tp = @p id run scoreboard players set @s temp_1 1
execute if score @s temp_1 matches 0 run tellraw @s [{"text":"","color":"red"},{"text": "[Teleport]", "color":"dark_red"}," No player found with that ID."]

execute if score @s temp_1 matches 1 at @a if score @s tp = @p id run tp @s @p
execute if score @s temp_1 matches 1 at @s run tellraw @s [{"text":"You teleported to ","color":"#2bbfd3"},{"selector":"@p"},"."]

scoreboard players reset @s tp
scoreboard players enable @s tp
