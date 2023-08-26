execute if score @s item_font matches -301 run data modify storage pandamium:temp rgb set value [255,0,0]
execute if score @s item_font matches -302 run data modify storage pandamium:temp rgb set value [255,127,0]
execute if score @s item_font matches -303 run data modify storage pandamium:temp rgb set value [255,255,0]
execute if score @s item_font matches -304 run data modify storage pandamium:temp rgb set value [0,255,0]
execute if score @s item_font matches -305 run data modify storage pandamium:temp rgb set value [0,255,255]
execute if score @s item_font matches -306 run data modify storage pandamium:temp rgb set value [0,127,255]
execute if score @s item_font matches -307 run data modify storage pandamium:temp rgb set value [0,0,255]
execute if score @s item_font matches -308 run data modify storage pandamium:temp rgb set value [127,0,255]
execute if score @s item_font matches -309 run data modify storage pandamium:temp rgb set value [255,0,255]
execute if score @s item_font matches -310 run data modify storage pandamium:temp rgb set value [255,0,127]
execute if score @s item_font matches -311 run data modify storage pandamium:temp rgb set value [0,0,0]
execute if score @s item_font matches -312 run data modify storage pandamium:temp rgb set value [255,255,255]
execute store result score <end_red> variable run data get storage pandamium:temp rgb[0]
execute store result score <end_green> variable run data get storage pandamium:temp rgb[1]
execute store result score <end_blue> variable run data get storage pandamium:temp rgb[2]

execute store result score <start_red> variable store result score <start_green> variable store result score <start_blue> variable run scoreboard players get @s font.gradient.left_index
scoreboard players operation <start_red> variable /= #65536 constant
scoreboard players operation <start_green> variable /= #256 constant
scoreboard players operation <start_green> variable %= #256 constant
scoreboard players operation <start_blue> variable %= #256 constant

function pandamium:impl/font/custom_fonts/gradient/main
