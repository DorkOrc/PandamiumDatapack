scoreboard players operation <red> variable = <red_range> variable
scoreboard players operation <red> variable *= <index> variable
scoreboard players operation <red> variable /= <max_index> variable
execute store result storage pandamium:templates macro.red__green__blue.red int 1 run scoreboard players operation <red> variable += <start_red> variable

scoreboard players operation <green> variable = <green_range> variable
scoreboard players operation <green> variable *= <index> variable
scoreboard players operation <green> variable /= <max_index> variable
execute store result storage pandamium:templates macro.red__green__blue.green int 1 run scoreboard players operation <green> variable += <start_green> variable

scoreboard players operation <blue> variable = <blue_range> variable
scoreboard players operation <blue> variable *= <index> variable
scoreboard players operation <blue> variable /= <max_index> variable
execute store result storage pandamium:templates macro.red__green__blue.blue int 1 run scoreboard players operation <blue> variable += <start_blue> variable

function pandamium:impl/font/custom_fonts/gradient/get_colour/main with storage pandamium:templates macro.red__green__blue

data remove storage pandamium:text characters[0]
scoreboard players add <index> variable 1
execute if data storage pandamium:text characters[0] run function pandamium:impl/font/custom_fonts/gradient/loop
