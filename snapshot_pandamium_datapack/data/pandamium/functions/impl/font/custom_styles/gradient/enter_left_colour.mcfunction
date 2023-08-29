scoreboard players set <colour> variable -100
execute if score @s item_font matches -199..-101 run scoreboard players operation <colour> variable -= @s item_font
execute if score @s sign_font matches -199..-101 run scoreboard players operation <colour> variable -= @s sign_font
function pandamium:impl/font/get_colour

execute store result score <red> variable run data get storage pandamium:temp colour.rgb[0]
execute store result score <green> variable run data get storage pandamium:temp colour.rgb[1]
execute store result score <blue> variable run data get storage pandamium:temp colour.rgb[2]

scoreboard players operation @s font.gradient.left_colour = <red> variable
scoreboard players operation @s font.gradient.left_colour *= #256 constant
scoreboard players operation @s font.gradient.left_colour += <green> variable
scoreboard players operation @s font.gradient.left_colour *= #256 constant
scoreboard players operation @s font.gradient.left_colour += <blue> variable

tellraw @s [{"text":"[Font]","color":"dark_green"},[{"text":" Set left colour to ","color":"green"},{"storage":"pandamium:temp","nbt":"colour.name","interpret":true},"!"]]
