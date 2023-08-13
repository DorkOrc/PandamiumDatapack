scoreboard players operation @s font.gradient.left_index = @s item_font
scoreboard players operation @s font.gradient.left_index *= #-1 constant
scoreboard players remove @s font.gradient.left_index 201
scoreboard players operation @s font.gradient.left_index %= #96 constant

execute store success score <returned> variable run tellraw @s [{"text":"[Font]","color":"dark_green"},{"text":" Selected Left Colour Index","color":"green"}]
