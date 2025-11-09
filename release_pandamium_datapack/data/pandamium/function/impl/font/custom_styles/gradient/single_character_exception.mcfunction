scoreboard players operation <red> variable = <start_red> variable
scoreboard players operation <red> variable += <end_red> variable
scoreboard players operation <red> variable /= #2 constant

scoreboard players operation <green> variable = <start_green> variable
scoreboard players operation <green> variable += <end_green> variable
scoreboard players operation <green> variable /= #2 constant

scoreboard players operation <blue> variable = <start_blue> variable
scoreboard players operation <blue> variable += <end_blue> variable
scoreboard players operation <blue> variable /= #2 constant

# offset brightness to prevent dulling
scoreboard players operation <brightness> variable = <red> variable
scoreboard players operation <brightness> variable > <green> variable
scoreboard players operation <brightness> variable > <blue> variable
scoreboard players operation <brightness_offset> variable = <brightness_range> variable
scoreboard players operation <brightness_offset> variable *= <index> variable
scoreboard players operation <brightness_offset> variable /= <max_index> variable
scoreboard players operation <brightness_offset> variable += <start_brightness> variable
scoreboard players operation <brightness_offset> variable -= <brightness> variable
execute store result storage pandamium:local functions."pandamium:impl/font/*".red int 1 run scoreboard players operation <red> variable += <brightness_offset> variable
execute store result storage pandamium:local functions."pandamium:impl/font/*".green int 1 run scoreboard players operation <green> variable += <brightness_offset> variable
execute store result storage pandamium:local functions."pandamium:impl/font/*".blue int 1 run scoreboard players operation <blue> variable += <brightness_offset> variable

function pandamium:impl/font/custom_styles/gradient/get_color/main with storage pandamium:local functions."pandamium:impl/font/*"
data modify storage pandamium:text result.color set from storage pandamium:local functions."pandamium:impl/font/*".color
