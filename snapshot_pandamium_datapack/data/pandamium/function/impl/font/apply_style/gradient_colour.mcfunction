execute unless score @s font.gradient.left_colour matches 0.. run scoreboard players set <valid_option> variable 0
execute unless score @s font.gradient.left_colour matches 0.. store success score <returned> variable run tellraw @s [{"text":"[Font]","color":"dark_red"},{"text":" You must select a left colour first!","color":"red"}]
execute unless score @s font.gradient.left_colour matches 0.. run return 0

execute store result score <end_red> variable run data get storage pandamium:temp colour.rgb[0]
execute store result score <end_green> variable run data get storage pandamium:temp colour.rgb[1]
execute store result score <end_blue> variable run data get storage pandamium:temp colour.rgb[2]

execute store result score <start_red> variable store result score <start_green> variable store result score <start_blue> variable run scoreboard players get @s font.gradient.left_colour
scoreboard players operation <start_red> variable /= #65536 constant
scoreboard players operation <start_green> variable /= #256 constant
scoreboard players operation <start_green> variable %= #256 constant
scoreboard players operation <start_blue> variable %= #256 constant

function pandamium:impl/font/custom_styles/gradient/main
