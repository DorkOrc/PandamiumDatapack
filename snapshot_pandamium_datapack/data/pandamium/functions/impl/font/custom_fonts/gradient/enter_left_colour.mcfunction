execute if score @s item_font matches -201 run data modify storage pandamium:temp rgb set value [255,0,0]
execute if score @s item_font matches -202 run data modify storage pandamium:temp rgb set value [255,127,0]
execute if score @s item_font matches -203 run data modify storage pandamium:temp rgb set value [255,255,0]
execute if score @s item_font matches -204 run data modify storage pandamium:temp rgb set value [0,255,0]
execute if score @s item_font matches -205 run data modify storage pandamium:temp rgb set value [0,255,255]
execute if score @s item_font matches -206 run data modify storage pandamium:temp rgb set value [0,127,255]
execute if score @s item_font matches -207 run data modify storage pandamium:temp rgb set value [0,0,255]
execute if score @s item_font matches -208 run data modify storage pandamium:temp rgb set value [127,0,255]
execute if score @s item_font matches -209 run data modify storage pandamium:temp rgb set value [255,0,255]
execute if score @s item_font matches -210 run data modify storage pandamium:temp rgb set value [255,0,127]
execute if score @s item_font matches -211 run data modify storage pandamium:temp rgb set value [0,0,0]
execute if score @s item_font matches -212 run data modify storage pandamium:temp rgb set value [255,255,255]
execute store result score <red> variable run data get storage pandamium:temp rgb[0]
execute store result score <green> variable run data get storage pandamium:temp rgb[1]
execute store result score <blue> variable run data get storage pandamium:temp rgb[2]

scoreboard players operation @s font.gradient.left_index = <red> variable
scoreboard players operation @s font.gradient.left_index *= #256 constant
scoreboard players operation @s font.gradient.left_index += <green> variable
scoreboard players operation @s font.gradient.left_index *= #256 constant
scoreboard players operation @s font.gradient.left_index += <blue> variable

execute store success score <returned> variable run tellraw @s [{"text":"[Font]","color":"dark_green"},{"text":" Selected Left Colour!","color":"green"}]
