scoreboard players set <colour> variable -200
scoreboard players operation <colour> variable -= @s dye
function pandamium:impl/font/get_colour
execute if score <valid_option> variable matches 0 run return run tellraw @s [{"text":"[Dye]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]

execute unless score @s custom_dye.gradient.left_color_id matches 1.. run return run tellraw @s [{"text":"[Dye]","color":"dark_red"},{"text":" You must select a left colour first!","color":"red"}]

# calculate gradient frames
data modify storage pandamium:local functions."pandamium:triggers/dye/*".colors set value [I;0,0,0,0,0]

execute store result score <frame_1.red> variable store result score <right_color.red> variable run data get storage pandamium:temp colour.rgb[0]
execute store result score <frame_1.green> variable store result score <right_color.green> variable run data get storage pandamium:temp colour.rgb[1]
execute store result score <frame_1.blue> variable store result score <right_color.blue> variable run data get storage pandamium:temp colour.rgb[2]
execute store result storage pandamium:local functions."pandamium:triggers/dye/*".colors[4] int 1 run data get storage pandamium:temp colour.int

scoreboard players operation <colour> variable = @s custom_dye.gradient.left_color_id
function pandamium:impl/font/get_colour
execute store result score <frame_0.red> variable run data get storage pandamium:temp colour.rgb[0]
execute store result score <frame_0.green> variable run data get storage pandamium:temp colour.rgb[1]
execute store result score <frame_0.blue> variable run data get storage pandamium:temp colour.rgb[2]
execute store result storage pandamium:local functions."pandamium:triggers/dye/*".colors[0] int 1 run data get storage pandamium:temp colour.int

execute store result score <frame_2.red> variable store result score <frame_3.red> variable run scoreboard players operation <frame_1.red> variable -= <frame_0.red> variable
execute store result score <frame_2.green> variable store result score <frame_3.green> variable run scoreboard players operation <frame_1.green> variable -= <frame_0.green> variable
execute store result score <frame_2.blue> variable store result score <frame_3.blue> variable run scoreboard players operation <frame_1.blue> variable -= <frame_0.blue> variable

scoreboard players operation <frame_1.red> variable /= #4 constant
scoreboard players operation <frame_1.red> variable += <frame_0.red> variable
scoreboard players operation <frame_1.green> variable /= #4 constant
scoreboard players operation <frame_1.green> variable += <frame_0.green> variable
scoreboard players operation <frame_1.blue> variable /= #4 constant
scoreboard players operation <frame_1.blue> variable += <frame_0.blue> variable

scoreboard players operation <frame_1.rgb> variable = <frame_1.red> variable
scoreboard players operation <frame_1.rgb> variable *= #256 constant
scoreboard players operation <frame_1.rgb> variable += <frame_1.green> variable
scoreboard players operation <frame_1.rgb> variable *= #256 constant
execute store result storage pandamium:local functions."pandamium:triggers/dye/*".colors[1] int 1 run scoreboard players operation <frame_1.rgb> variable += <frame_1.blue> variable

scoreboard players operation <frame_2.red> variable /= #2 constant
scoreboard players operation <frame_2.red> variable += <frame_0.red> variable
scoreboard players operation <frame_2.green> variable /= #2 constant
scoreboard players operation <frame_2.green> variable += <frame_0.green> variable
scoreboard players operation <frame_2.blue> variable /= #2 constant
scoreboard players operation <frame_2.blue> variable += <frame_0.blue> variable

scoreboard players operation <frame_2.rgb> variable = <frame_2.red> variable
scoreboard players operation <frame_2.rgb> variable *= #256 constant
scoreboard players operation <frame_2.rgb> variable += <frame_2.green> variable
scoreboard players operation <frame_2.rgb> variable *= #256 constant
execute store result storage pandamium:local functions."pandamium:triggers/dye/*".colors[2] int 1 run scoreboard players operation <frame_2.rgb> variable += <frame_2.blue> variable

scoreboard players operation <frame_3.red> variable *= #3 constant
scoreboard players operation <frame_3.red> variable /= #4 constant
scoreboard players operation <frame_3.red> variable += <frame_0.red> variable
scoreboard players operation <frame_3.green> variable *= #3 constant
scoreboard players operation <frame_3.green> variable /= #4 constant
scoreboard players operation <frame_3.green> variable += <frame_0.green> variable
scoreboard players operation <frame_3.blue> variable *= #3 constant
scoreboard players operation <frame_3.blue> variable /= #4 constant
scoreboard players operation <frame_3.blue> variable += <frame_0.blue> variable

scoreboard players operation <frame_3.rgb> variable = <frame_3.red> variable
scoreboard players operation <frame_3.rgb> variable *= #256 constant
scoreboard players operation <frame_3.rgb> variable += <frame_3.green> variable
scoreboard players operation <frame_3.rgb> variable *= #256 constant
execute store result storage pandamium:local functions."pandamium:triggers/dye/*".colors[3] int 1 run scoreboard players operation <frame_3.rgb> variable += <frame_3.blue> variable

scoreboard players set <chosen_type> variable 5
function pandamium:triggers/dye/change_type
