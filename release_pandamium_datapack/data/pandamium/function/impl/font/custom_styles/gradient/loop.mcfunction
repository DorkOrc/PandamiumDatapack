scoreboard players operation <red> variable = <red_range> variable
scoreboard players operation <red> variable *= <index> variable
scoreboard players operation <red> variable /= <max_index> variable
scoreboard players operation <red> variable += <start_red> variable

scoreboard players operation <green> variable = <green_range> variable
scoreboard players operation <green> variable *= <index> variable
scoreboard players operation <green> variable /= <max_index> variable
scoreboard players operation <green> variable += <start_green> variable

scoreboard players operation <blue> variable = <blue_range> variable
scoreboard players operation <blue> variable *= <index> variable
scoreboard players operation <blue> variable /= <max_index> variable
scoreboard players operation <blue> variable += <start_blue> variable

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

data modify storage pandamium:text input.extra append value {}
data modify storage pandamium:text input.extra[-1].text set from storage pandamium:text output[0]
data modify storage pandamium:text input.extra[-1].color set from storage pandamium:local functions."pandamium:impl/font/*".color

data remove storage pandamium:text output[0]
scoreboard players add <index> variable 1
execute if data storage pandamium:text output[0] run function pandamium:impl/font/custom_styles/gradient/loop
