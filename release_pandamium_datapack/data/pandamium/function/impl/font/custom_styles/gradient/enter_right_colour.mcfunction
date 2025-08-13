execute store result score <end_red> variable run data get storage pandamium:temp colour.rgb[0]
execute store result score <end_green> variable run data get storage pandamium:temp colour.rgb[1]
execute store result score <end_blue> variable run data get storage pandamium:temp colour.rgb[2]

execute store result score <start_red> variable store result score <start_green> variable store result score <start_blue> variable run scoreboard players get @s font.gradient.left_colour
scoreboard players operation <start_red> variable /= #65536 constant
scoreboard players operation <start_green> variable /= #256 constant
scoreboard players operation <start_green> variable %= #256 constant
scoreboard players operation <start_blue> variable %= #256 constant

function pandamium:impl/font/custom_styles/gradient/main
