scoreboard players operation <right_color_index> variable = @s item_font
scoreboard players operation <right_color_index> variable *= #-1 constant
scoreboard players remove <right_color_index> variable 301
scoreboard players operation <right_color_index> variable %= #96 constant

scoreboard players operation <distance> variable = <right_color_index> variable
scoreboard players operation <distance> variable -= @s font.gradient.left_index

execute if score <distance> variable matches 48.. run scoreboard players remove <right_color_index> variable 96
execute if score <distance> variable matches ..-48 run scoreboard players add <right_color_index> variable 96

function pandamium:impl/font/custom_fonts/generate/pre

scoreboard players operation <left_color_index> variable = @s font.gradient.left_index
function pandamium:impl/font/custom_fonts/gradient/run

function pandamium:impl/font/custom_fonts/generate/post
