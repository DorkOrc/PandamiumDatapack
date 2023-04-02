scoreboard players operation <right_color_index> variable = @s item_font
scoreboard players operation <right_color_index> variable *= #-1 constant
scoreboard players remove <right_color_index> variable 301
scoreboard players operation <right_color_index> variable %= #96 constant

scoreboard players operation <distance> variable = <right_color_index> variable
scoreboard players operation <distance> variable -= @s font.gradient.left_index

execute if score <distance> variable matches 48.. run scoreboard players remove <right_color_index> variable 96
execute if score <distance> variable matches ..-48 run scoreboard players add <right_color_index> variable 96

data modify storage pandamium:temp Text set value '{"text":"Hello World"}'
execute if data entity @s SelectedItem.tag.display.Name run data modify storage pandamium:temp Text set from entity @s SelectedItem.tag.display.Name

function pandamium:misc/font/custom_fonts/generate/pre

scoreboard players operation <left_color_index> variable = @s font.gradient.left_index
function pandamium:misc/font/custom_fonts/gradient/run

function pandamium:misc/font/custom_fonts/generate/post

execute in pandamium:staff_world store success score <returned> variable run tellraw @s {"nbt":"front_text.messages[0]","block":"3 0 0","interpret":true}
