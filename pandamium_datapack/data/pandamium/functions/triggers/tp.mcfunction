execute at @a if score @s tp = @p id run tp @s @p
execute at @s run tellraw @s [{"text":"You teleported to ","color":"#2bbfd3"},{"selector":"@p"}]

scoreboard players reset @s tp
scoreboard players enable @s tp
