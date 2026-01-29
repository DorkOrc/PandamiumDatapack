function do:text/flatten
function do:str/chars

execute store result score <max_index> variable if data storage do:io output[]
scoreboard players remove <max_index> variable 1

execute if score <max_index> variable matches ..-1 run return run execute store success score <returned> variable run tellraw @s [{text:"[Font]",color:"dark_red"},{text:" String is too short!",color:"red",hover_event:{action:"show_text",value:[{text:"Failed to apply gradient to ",color:"red"},{storage:"pandamium:temp",nbt:"text",interpret:true}]}}]
execute if score <max_index> variable matches 50.. run return run execute store success score <returned> variable run tellraw @s [{text:"[Font]",color:"dark_red"},{text:" String is too long! As a lag prevention measure, the maximum string length for applying a gradient is 50 characters.",color:"red",hover_event:{action:"show_text",value:[{text:"Failed to apply gradient to ",color:"red"},{storage:"pandamium:temp",nbt:"text",interpret:true}]}}]

execute if score <max_index> variable matches 0 run return run function pandamium:impl/font/custom_styles/gradient/single_character_exception

# else
scoreboard players operation <red_range> variable = <end_red> variable
scoreboard players operation <red_range> variable -= <start_red> variable

scoreboard players operation <green_range> variable = <end_green> variable
scoreboard players operation <green_range> variable -= <start_green> variable

scoreboard players operation <blue_range> variable = <end_blue> variable
scoreboard players operation <blue_range> variable -= <start_blue> variable

scoreboard players operation <start_brightness> variable = <start_red> variable
scoreboard players operation <start_brightness> variable > <start_green> variable
scoreboard players operation <start_brightness> variable > <start_blue> variable
scoreboard players operation <end_brightness> variable = <end_red> variable
scoreboard players operation <end_brightness> variable > <end_green> variable
scoreboard players operation <end_brightness> variable > <end_blue> variable
scoreboard players operation <brightness_range> variable = <end_brightness> variable
scoreboard players operation <brightness_range> variable -= <start_brightness> variable

data modify storage pandamium:local functions."pandamium:impl/font/*".text set from storage pandamium:text result
data remove storage pandamium:local functions."pandamium:impl/font/*".text.text
data remove storage pandamium:local functions."pandamium:impl/font/*".text.extra
data remove storage pandamium:local functions."pandamium:impl/font/*".text.color

data remove storage pandamium:text result.text
data remove storage pandamium:text result.extra

scoreboard players set <index> variable 0
function pandamium:impl/font/custom_styles/gradient/loop

data modify storage pandamium:text result merge from storage pandamium:local functions."pandamium:impl/font/*".text
data modify storage pandamium:text result merge from storage pandamium:text result.extra[0]
data remove storage pandamium:text result.extra[0]
