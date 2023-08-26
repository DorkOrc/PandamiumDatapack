execute if score @s item_font matches -301 run data modify storage pandamium:temp rgb set value [255,0,0]
execute if score @s item_font matches -302 run data modify storage pandamium:temp rgb set value [255,127,0]
execute if score @s item_font matches -303 run data modify storage pandamium:temp rgb set value [255,255,0]
execute if score @s item_font matches -304 run data modify storage pandamium:temp rgb set value [127,255,0]
execute if score @s item_font matches -305 run data modify storage pandamium:temp rgb set value [0,255,0]
execute if score @s item_font matches -306 run data modify storage pandamium:temp rgb set value [0,255,127]
execute if score @s item_font matches -307 run data modify storage pandamium:temp rgb set value [0,255,255]
execute if score @s item_font matches -308 run data modify storage pandamium:temp rgb set value [0,127,255]
execute if score @s item_font matches -309 run data modify storage pandamium:temp rgb set value [0,0,255]
execute if score @s item_font matches -310 run data modify storage pandamium:temp rgb set value [127,0,255]
execute if score @s item_font matches -311 run data modify storage pandamium:temp rgb set value [255,0,255]
execute if score @s item_font matches -312 run data modify storage pandamium:temp rgb set value [255,0,127]
execute if score @s item_font matches -313 run data modify storage pandamium:temp rgb set value [127,127,127]

execute if score @s item_font matches -314 run data modify storage pandamium:temp rgb set value [127,0,0]
execute if score @s item_font matches -315 run data modify storage pandamium:temp rgb set value [127,63,0]
execute if score @s item_font matches -316 run data modify storage pandamium:temp rgb set value [127,63,0]
execute if score @s item_font matches -317 run data modify storage pandamium:temp rgb set value [63,127,0]
execute if score @s item_font matches -318 run data modify storage pandamium:temp rgb set value [0,127,0]
execute if score @s item_font matches -319 run data modify storage pandamium:temp rgb set value [0,127,63]
execute if score @s item_font matches -320 run data modify storage pandamium:temp rgb set value [0,127,127]
execute if score @s item_font matches -321 run data modify storage pandamium:temp rgb set value [0,63,127]
execute if score @s item_font matches -322 run data modify storage pandamium:temp rgb set value [0,0,127]
execute if score @s item_font matches -323 run data modify storage pandamium:temp rgb set value [63,0,127]
execute if score @s item_font matches -324 run data modify storage pandamium:temp rgb set value [127,0,127]
execute if score @s item_font matches -325 run data modify storage pandamium:temp rgb set value [127,0,63]
execute if score @s item_font matches -326 run data modify storage pandamium:temp rgb set value [63,63,63]

execute if score @s item_font matches -327 run data modify storage pandamium:temp rgb set value [255,127,127]
execute if score @s item_font matches -328 run data modify storage pandamium:temp rgb set value [255,191,127]
execute if score @s item_font matches -329 run data modify storage pandamium:temp rgb set value [255,255,127]
execute if score @s item_font matches -330 run data modify storage pandamium:temp rgb set value [191,255,127]
execute if score @s item_font matches -331 run data modify storage pandamium:temp rgb set value [127,255,127]
execute if score @s item_font matches -332 run data modify storage pandamium:temp rgb set value [127,255,191]
execute if score @s item_font matches -333 run data modify storage pandamium:temp rgb set value [127,255,255]
execute if score @s item_font matches -334 run data modify storage pandamium:temp rgb set value [127,191,255]
execute if score @s item_font matches -335 run data modify storage pandamium:temp rgb set value [127,127,255]
execute if score @s item_font matches -336 run data modify storage pandamium:temp rgb set value [191,127,255]
execute if score @s item_font matches -337 run data modify storage pandamium:temp rgb set value [255,127,255]
execute if score @s item_font matches -338 run data modify storage pandamium:temp rgb set value [255,127,191]
execute if score @s item_font matches -339 run data modify storage pandamium:temp rgb set value [191,191,191]

execute if score @s item_font matches -340 run data modify storage pandamium:temp rgb set value [0,0,0]
execute if score @s item_font matches -341 run data modify storage pandamium:temp rgb set value [255,255,255]

execute store result score <end_red> variable run data get storage pandamium:temp rgb[0]
execute store result score <end_green> variable run data get storage pandamium:temp rgb[1]
execute store result score <end_blue> variable run data get storage pandamium:temp rgb[2]

execute store result score <start_red> variable store result score <start_green> variable store result score <start_blue> variable run scoreboard players get @s font.gradient.left_colour
scoreboard players operation <start_red> variable /= #65536 constant
scoreboard players operation <start_green> variable /= #256 constant
scoreboard players operation <start_green> variable %= #256 constant
scoreboard players operation <start_blue> variable %= #256 constant

function pandamium:impl/font/custom_fonts/gradient/main
