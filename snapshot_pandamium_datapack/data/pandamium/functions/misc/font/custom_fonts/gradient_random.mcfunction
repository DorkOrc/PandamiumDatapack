function pandamium:misc/font/custom_fonts/generate/pre

execute store result score <left_color_index> variable store result score <right_color_index> variable run loot spawn ~ ~ ~ loot pandamium:rng/uniform_0_81
scoreboard players add <right_color_index> variable 15
scoreboard players operation <right_color_index> variable %= #97 constant

function pandamium:misc/font/custom_fonts/gradient/run

function pandamium:misc/font/custom_fonts/generate/post
