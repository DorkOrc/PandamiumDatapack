execute if score @s item_font matches -201 run data modify storage pandamium:temp rgb set value [255,0,0]
execute if score @s item_font matches -202 run data modify storage pandamium:temp rgb set value [255,127,0]
execute if score @s item_font matches -203 run data modify storage pandamium:temp rgb set value [255,255,0]
execute if score @s item_font matches -204 run data modify storage pandamium:temp rgb set value [127,255,0]
execute if score @s item_font matches -205 run data modify storage pandamium:temp rgb set value [0,255,0]
execute if score @s item_font matches -206 run data modify storage pandamium:temp rgb set value [0,255,127]
execute if score @s item_font matches -207 run data modify storage pandamium:temp rgb set value [0,255,255]
execute if score @s item_font matches -208 run data modify storage pandamium:temp rgb set value [0,127,255]
execute if score @s item_font matches -209 run data modify storage pandamium:temp rgb set value [0,0,255]
execute if score @s item_font matches -210 run data modify storage pandamium:temp rgb set value [127,0,255]
execute if score @s item_font matches -211 run data modify storage pandamium:temp rgb set value [255,0,255]
execute if score @s item_font matches -212 run data modify storage pandamium:temp rgb set value [255,0,127]
execute if score @s item_font matches -213 run data modify storage pandamium:temp rgb set value [127,127,127]

execute if score @s item_font matches -214 run data modify storage pandamium:temp rgb set value [127,0,0]
execute if score @s item_font matches -215 run data modify storage pandamium:temp rgb set value [127,63,0]
execute if score @s item_font matches -216 run data modify storage pandamium:temp rgb set value [127,63,0]
execute if score @s item_font matches -217 run data modify storage pandamium:temp rgb set value [63,127,0]
execute if score @s item_font matches -218 run data modify storage pandamium:temp rgb set value [0,127,0]
execute if score @s item_font matches -219 run data modify storage pandamium:temp rgb set value [0,127,63]
execute if score @s item_font matches -220 run data modify storage pandamium:temp rgb set value [0,127,127]
execute if score @s item_font matches -221 run data modify storage pandamium:temp rgb set value [0,63,127]
execute if score @s item_font matches -222 run data modify storage pandamium:temp rgb set value [0,0,127]
execute if score @s item_font matches -223 run data modify storage pandamium:temp rgb set value [63,0,127]
execute if score @s item_font matches -224 run data modify storage pandamium:temp rgb set value [127,0,127]
execute if score @s item_font matches -225 run data modify storage pandamium:temp rgb set value [127,0,63]
execute if score @s item_font matches -226 run data modify storage pandamium:temp rgb set value [0,0,0]

execute if score @s item_font matches -227 run data modify storage pandamium:temp rgb set value [255,127,127]
execute if score @s item_font matches -228 run data modify storage pandamium:temp rgb set value [255,191,127]
execute if score @s item_font matches -229 run data modify storage pandamium:temp rgb set value [255,255,127]
execute if score @s item_font matches -230 run data modify storage pandamium:temp rgb set value [191,255,127]
execute if score @s item_font matches -231 run data modify storage pandamium:temp rgb set value [127,255,127]
execute if score @s item_font matches -232 run data modify storage pandamium:temp rgb set value [127,255,191]
execute if score @s item_font matches -233 run data modify storage pandamium:temp rgb set value [127,255,255]
execute if score @s item_font matches -234 run data modify storage pandamium:temp rgb set value [127,191,255]
execute if score @s item_font matches -235 run data modify storage pandamium:temp rgb set value [127,127,255]
execute if score @s item_font matches -236 run data modify storage pandamium:temp rgb set value [191,127,255]
execute if score @s item_font matches -237 run data modify storage pandamium:temp rgb set value [255,127,255]
execute if score @s item_font matches -238 run data modify storage pandamium:temp rgb set value [255,127,191]
execute if score @s item_font matches -239 run data modify storage pandamium:temp rgb set value [255,255,255]

execute store result score <red> variable run data get storage pandamium:temp rgb[0]
execute store result score <green> variable run data get storage pandamium:temp rgb[1]
execute store result score <blue> variable run data get storage pandamium:temp rgb[2]

scoreboard players operation @s font.gradient.left_colour = <red> variable
scoreboard players operation @s font.gradient.left_colour *= #256 constant
scoreboard players operation @s font.gradient.left_colour += <green> variable
scoreboard players operation @s font.gradient.left_colour *= #256 constant
scoreboard players operation @s font.gradient.left_colour += <blue> variable

execute store success score <returned> variable run tellraw @s [{"text":"[Font]","color":"dark_green"},{"text":" Selected Left Colour!","color":"green"}]
