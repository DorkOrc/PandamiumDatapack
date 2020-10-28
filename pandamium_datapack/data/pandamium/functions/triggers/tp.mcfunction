execute at @a if score @s tp = @p id run tp @s @p
execute at @s run tellraw @s [{"text":"","color":"yellow"},{"text":"[TP]","color":"gold"}," You teleported to ",{"selector":"@p"},"!"]

scoreboard players reset @s tp
scoreboard players enable @s tp
