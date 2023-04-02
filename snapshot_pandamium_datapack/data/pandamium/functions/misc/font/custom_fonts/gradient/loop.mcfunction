scoreboard players operation <color_index> variable = <n> variable
scoreboard players operation <color_index> variable *= <range> variable
scoreboard players operation <color_index> variable /= <last_character_index> variable
scoreboard players operation <color_index> variable += <left_color_index> variable

function pandamium:misc/font/custom_fonts/gradient/tree/run

data remove storage pandamium:temp characters[0]
scoreboard players add <n> variable 1
execute if data storage pandamium:temp characters[0] run function pandamium:misc/font/custom_fonts/gradient/loop
