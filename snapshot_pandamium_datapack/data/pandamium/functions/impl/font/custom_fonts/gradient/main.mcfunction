data modify storage pandamium:text input set from storage pandamium:temp Text
function pandamium:impl/text/get_characters/main

execute in pandamium:staff_world run data modify block 3 0 0 front_text.messages[0] set value '{"text":""}'

execute store result score <max_index> variable if data storage pandamium:text characters[]
scoreboard players remove <max_index> variable 1

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

scoreboard players set <index> variable 0
execute if data storage pandamium:text characters[0] in pandamium:staff_world run function pandamium:impl/font/custom_fonts/gradient/loop

function pandamium:impl/font/custom_fonts/reapply_root_attributes/main
