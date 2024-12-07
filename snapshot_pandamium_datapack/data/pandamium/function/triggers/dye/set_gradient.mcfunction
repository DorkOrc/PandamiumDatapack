scoreboard players set <colour> variable -200
scoreboard players operation <colour> variable -= @s dye

execute if score <colour> variable = @s custom_dye.gradient.left_color_id run return run tellraw @s [{"text":"[Dye]","color":"dark_red"},{"text":" Both gradient colours cannot be the same!","color":"red"}]

function pandamium:impl/font/get_colour
execute if score <valid_option> variable matches 0 run return run tellraw @s [{"text":"[Dye]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]

execute unless score @s custom_dye.gradient.left_color_id matches 1.. run return run tellraw @s [{"text":"[Dye]","color":"dark_red"},{"text":" You must select a left colour first!","color":"red"}]

# calculate gradient frames
data modify storage pandamium:local functions."pandamium:triggers/dye/*".colors set value [I;0,0]
data modify storage pandamium:local functions."pandamium:triggers/dye/*".gradient_colors set value {}

# get right colour
execute store result score <color_range.red> variable run data get storage pandamium:temp colour.rgb[0]
execute store result score <color_range.green> variable run data get storage pandamium:temp colour.rgb[1]
execute store result score <color_range.blue> variable run data get storage pandamium:temp colour.rgb[2]
execute store result storage pandamium:local functions."pandamium:triggers/dye/*".colors[1] int 1 store result storage pandamium:local functions."pandamium:triggers/dye/*".color_23 int 1 run data get storage pandamium:temp colour.int

# get left colour
scoreboard players operation <colour> variable = @s custom_dye.gradient.left_color_id
function pandamium:impl/font/get_colour
execute store result score <left_color.red> variable run data get storage pandamium:temp colour.rgb[0]
execute store result score <left_color.green> variable run data get storage pandamium:temp colour.rgb[1]
execute store result score <left_color.blue> variable run data get storage pandamium:temp colour.rgb[2]
execute store result storage pandamium:local functions."pandamium:triggers/dye/*".colors[0] int 1 store result storage pandamium:local functions."pandamium:triggers/dye/*".color_0 int 1 run data get storage pandamium:temp colour.int

# calculate colour range
execute store result score <frame_1.red> variable store result score <frame_2.red> variable store result score <frame_3.red> variable store result score <frame_4.red> variable store result score <frame_5.red> variable store result score <frame_6.red> variable store result score <frame_7.red> variable store result score <frame_8.red> variable store result score <frame_9.red> variable store result score <frame_10.red> variable store result score <frame_11.red> variable store result score <frame_12.red> variable store result score <frame_13.red> variable store result score <frame_14.red> variable store result score <frame_15.red> variable store result score <frame_16.red> variable store result score <frame_17.red> variable store result score <frame_18.red> variable store result score <frame_19.red> variable store result score <frame_20.red> variable store result score <frame_21.red> variable store result score <frame_22.red> variable run scoreboard players operation <color_range.red> variable -= <left_color.red> variable
execute store result score <frame_1.green> variable store result score <frame_2.green> variable store result score <frame_3.green> variable store result score <frame_4.green> variable store result score <frame_5.green> variable store result score <frame_6.green> variable store result score <frame_7.green> variable store result score <frame_8.green> variable store result score <frame_9.green> variable store result score <frame_10.green> variable store result score <frame_11.green> variable store result score <frame_12.green> variable store result score <frame_13.green> variable store result score <frame_14.green> variable store result score <frame_15.green> variable store result score <frame_16.green> variable store result score <frame_17.green> variable store result score <frame_18.green> variable store result score <frame_19.green> variable store result score <frame_20.green> variable store result score <frame_21.green> variable store result score <frame_22.green> variable run scoreboard players operation <color_range.green> variable -= <left_color.green> variable
execute store result score <frame_1.blue> variable store result score <frame_2.blue> variable store result score <frame_3.blue> variable store result score <frame_4.blue> variable store result score <frame_5.blue> variable store result score <frame_6.blue> variable store result score <frame_7.blue> variable store result score <frame_8.blue> variable store result score <frame_9.blue> variable store result score <frame_10.blue> variable store result score <frame_11.blue> variable store result score <frame_12.blue> variable store result score <frame_13.blue> variable store result score <frame_14.blue> variable store result score <frame_15.blue> variable store result score <frame_16.blue> variable store result score <frame_17.blue> variable store result score <frame_18.blue> variable store result score <frame_19.blue> variable store result score <frame_20.blue> variable store result score <frame_21.blue> variable store result score <frame_22.blue> variable run scoreboard players operation <color_range.blue> variable -= <left_color.blue> variable

# frame 1
scoreboard players operation <frame_1.red> variable *= #1 constant
scoreboard players operation <frame_1.red> variable /= #12 constant
scoreboard players operation <frame_1.red> variable += <left_color.red> variable
scoreboard players operation <frame_1.green> variable *= #1 constant
scoreboard players operation <frame_1.green> variable /= #12 constant
scoreboard players operation <frame_1.green> variable += <left_color.green> variable
scoreboard players operation <frame_1.blue> variable *= #1 constant
scoreboard players operation <frame_1.blue> variable /= #12 constant
scoreboard players operation <frame_1.blue> variable += <left_color.blue> variable

scoreboard players operation <frame_1.rgb> variable = <frame_1.red> variable
scoreboard players operation <frame_1.rgb> variable *= #256 constant
scoreboard players operation <frame_1.rgb> variable += <frame_1.green> variable
scoreboard players operation <frame_1.rgb> variable *= #256 constant
execute store result storage pandamium:local functions."pandamium:triggers/dye/*".color_1 int 1 run scoreboard players operation <frame_1.rgb> variable += <frame_1.blue> variable

# frame 2
scoreboard players operation <frame_2.red> variable *= #2 constant
scoreboard players operation <frame_2.red> variable /= #12 constant
scoreboard players operation <frame_2.red> variable += <left_color.red> variable
scoreboard players operation <frame_2.green> variable *= #2 constant
scoreboard players operation <frame_2.green> variable /= #12 constant
scoreboard players operation <frame_2.green> variable += <left_color.green> variable
scoreboard players operation <frame_2.blue> variable *= #2 constant
scoreboard players operation <frame_2.blue> variable /= #12 constant
scoreboard players operation <frame_2.blue> variable += <left_color.blue> variable

scoreboard players operation <frame_2.rgb> variable = <frame_2.red> variable
scoreboard players operation <frame_2.rgb> variable *= #256 constant
scoreboard players operation <frame_2.rgb> variable += <frame_2.green> variable
scoreboard players operation <frame_2.rgb> variable *= #256 constant
execute store result storage pandamium:local functions."pandamium:triggers/dye/*".color_2 int 1 run scoreboard players operation <frame_2.rgb> variable += <frame_2.blue> variable

# frame 3
scoreboard players operation <frame_3.red> variable *= #3 constant
scoreboard players operation <frame_3.red> variable /= #12 constant
scoreboard players operation <frame_3.red> variable += <left_color.red> variable
scoreboard players operation <frame_3.green> variable *= #3 constant
scoreboard players operation <frame_3.green> variable /= #12 constant
scoreboard players operation <frame_3.green> variable += <left_color.green> variable
scoreboard players operation <frame_3.blue> variable *= #3 constant
scoreboard players operation <frame_3.blue> variable /= #12 constant
scoreboard players operation <frame_3.blue> variable += <left_color.blue> variable

scoreboard players operation <frame_3.rgb> variable = <frame_3.red> variable
scoreboard players operation <frame_3.rgb> variable *= #256 constant
scoreboard players operation <frame_3.rgb> variable += <frame_3.green> variable
scoreboard players operation <frame_3.rgb> variable *= #256 constant
execute store result storage pandamium:local functions."pandamium:triggers/dye/*".color_3 int 1 run scoreboard players operation <frame_3.rgb> variable += <frame_3.blue> variable

# frame 4
scoreboard players operation <frame_4.red> variable *= #4 constant
scoreboard players operation <frame_4.red> variable /= #12 constant
scoreboard players operation <frame_4.red> variable += <left_color.red> variable
scoreboard players operation <frame_4.green> variable *= #4 constant
scoreboard players operation <frame_4.green> variable /= #12 constant
scoreboard players operation <frame_4.green> variable += <left_color.green> variable
scoreboard players operation <frame_4.blue> variable *= #4 constant
scoreboard players operation <frame_4.blue> variable /= #12 constant
scoreboard players operation <frame_4.blue> variable += <left_color.blue> variable

scoreboard players operation <frame_4.rgb> variable = <frame_4.red> variable
scoreboard players operation <frame_4.rgb> variable *= #256 constant
scoreboard players operation <frame_4.rgb> variable += <frame_4.green> variable
scoreboard players operation <frame_4.rgb> variable *= #256 constant
execute store result storage pandamium:local functions."pandamium:triggers/dye/*".color_4 int 1 run scoreboard players operation <frame_4.rgb> variable += <frame_4.blue> variable

# frame 5
scoreboard players operation <frame_5.red> variable *= #5 constant
scoreboard players operation <frame_5.red> variable /= #12 constant
scoreboard players operation <frame_5.red> variable += <left_color.red> variable
scoreboard players operation <frame_5.green> variable *= #5 constant
scoreboard players operation <frame_5.green> variable /= #12 constant
scoreboard players operation <frame_5.green> variable += <left_color.green> variable
scoreboard players operation <frame_5.blue> variable *= #5 constant
scoreboard players operation <frame_5.blue> variable /= #12 constant
scoreboard players operation <frame_5.blue> variable += <left_color.blue> variable

scoreboard players operation <frame_5.rgb> variable = <frame_5.red> variable
scoreboard players operation <frame_5.rgb> variable *= #256 constant
scoreboard players operation <frame_5.rgb> variable += <frame_5.green> variable
scoreboard players operation <frame_5.rgb> variable *= #256 constant
execute store result storage pandamium:local functions."pandamium:triggers/dye/*".color_5 int 1 run scoreboard players operation <frame_5.rgb> variable += <frame_5.blue> variable

# frame 6
scoreboard players operation <frame_6.red> variable *= #6 constant
scoreboard players operation <frame_6.red> variable /= #12 constant
scoreboard players operation <frame_6.red> variable += <left_color.red> variable
scoreboard players operation <frame_6.green> variable *= #6 constant
scoreboard players operation <frame_6.green> variable /= #12 constant
scoreboard players operation <frame_6.green> variable += <left_color.green> variable
scoreboard players operation <frame_6.blue> variable *= #6 constant
scoreboard players operation <frame_6.blue> variable /= #12 constant
scoreboard players operation <frame_6.blue> variable += <left_color.blue> variable

scoreboard players operation <frame_6.rgb> variable = <frame_6.red> variable
scoreboard players operation <frame_6.rgb> variable *= #256 constant
scoreboard players operation <frame_6.rgb> variable += <frame_6.green> variable
scoreboard players operation <frame_6.rgb> variable *= #256 constant
execute store result storage pandamium:local functions."pandamium:triggers/dye/*".color_6 int 1 run scoreboard players operation <frame_6.rgb> variable += <frame_6.blue> variable

# frame 7
scoreboard players operation <frame_7.red> variable *= #7 constant
scoreboard players operation <frame_7.red> variable /= #12 constant
scoreboard players operation <frame_7.red> variable += <left_color.red> variable
scoreboard players operation <frame_7.green> variable *= #7 constant
scoreboard players operation <frame_7.green> variable /= #12 constant
scoreboard players operation <frame_7.green> variable += <left_color.green> variable
scoreboard players operation <frame_7.blue> variable *= #7 constant
scoreboard players operation <frame_7.blue> variable /= #12 constant
scoreboard players operation <frame_7.blue> variable += <left_color.blue> variable

scoreboard players operation <frame_7.rgb> variable = <frame_7.red> variable
scoreboard players operation <frame_7.rgb> variable *= #256 constant
scoreboard players operation <frame_7.rgb> variable += <frame_7.green> variable
scoreboard players operation <frame_7.rgb> variable *= #256 constant
execute store result storage pandamium:local functions."pandamium:triggers/dye/*".color_7 int 1 run scoreboard players operation <frame_7.rgb> variable += <frame_7.blue> variable

# frame 8
scoreboard players operation <frame_8.red> variable *= #8 constant
scoreboard players operation <frame_8.red> variable /= #12 constant
scoreboard players operation <frame_8.red> variable += <left_color.red> variable
scoreboard players operation <frame_8.green> variable *= #8 constant
scoreboard players operation <frame_8.green> variable /= #12 constant
scoreboard players operation <frame_8.green> variable += <left_color.green> variable
scoreboard players operation <frame_8.blue> variable *= #8 constant
scoreboard players operation <frame_8.blue> variable /= #12 constant
scoreboard players operation <frame_8.blue> variable += <left_color.blue> variable

scoreboard players operation <frame_8.rgb> variable = <frame_8.red> variable
scoreboard players operation <frame_8.rgb> variable *= #256 constant
scoreboard players operation <frame_8.rgb> variable += <frame_8.green> variable
scoreboard players operation <frame_8.rgb> variable *= #256 constant
execute store result storage pandamium:local functions."pandamium:triggers/dye/*".color_8 int 1 run scoreboard players operation <frame_8.rgb> variable += <frame_8.blue> variable

# frame 9
scoreboard players operation <frame_9.red> variable *= #9 constant
scoreboard players operation <frame_9.red> variable /= #12 constant
scoreboard players operation <frame_9.red> variable += <left_color.red> variable
scoreboard players operation <frame_9.green> variable *= #9 constant
scoreboard players operation <frame_9.green> variable /= #12 constant
scoreboard players operation <frame_9.green> variable += <left_color.green> variable
scoreboard players operation <frame_9.blue> variable *= #9 constant
scoreboard players operation <frame_9.blue> variable /= #12 constant
scoreboard players operation <frame_9.blue> variable += <left_color.blue> variable

scoreboard players operation <frame_9.rgb> variable = <frame_9.red> variable
scoreboard players operation <frame_9.rgb> variable *= #256 constant
scoreboard players operation <frame_9.rgb> variable += <frame_9.green> variable
scoreboard players operation <frame_9.rgb> variable *= #256 constant
execute store result storage pandamium:local functions."pandamium:triggers/dye/*".color_9 int 1 run scoreboard players operation <frame_9.rgb> variable += <frame_9.blue> variable

# frame 10
scoreboard players operation <frame_10.red> variable *= #10 constant
scoreboard players operation <frame_10.red> variable /= #12 constant
scoreboard players operation <frame_10.red> variable += <left_color.red> variable
scoreboard players operation <frame_10.green> variable *= #10 constant
scoreboard players operation <frame_10.green> variable /= #12 constant
scoreboard players operation <frame_10.green> variable += <left_color.green> variable
scoreboard players operation <frame_10.blue> variable *= #10 constant
scoreboard players operation <frame_10.blue> variable /= #12 constant
scoreboard players operation <frame_10.blue> variable += <left_color.blue> variable

scoreboard players operation <frame_10.rgb> variable = <frame_10.red> variable
scoreboard players operation <frame_10.rgb> variable *= #256 constant
scoreboard players operation <frame_10.rgb> variable += <frame_10.green> variable
scoreboard players operation <frame_10.rgb> variable *= #256 constant
execute store result storage pandamium:local functions."pandamium:triggers/dye/*".color_10 int 1 run scoreboard players operation <frame_10.rgb> variable += <frame_10.blue> variable

# frame 11
scoreboard players operation <frame_11.red> variable *= #11 constant
scoreboard players operation <frame_11.red> variable /= #12 constant
scoreboard players operation <frame_11.red> variable += <left_color.red> variable
scoreboard players operation <frame_11.green> variable *= #11 constant
scoreboard players operation <frame_11.green> variable /= #12 constant
scoreboard players operation <frame_11.green> variable += <left_color.green> variable
scoreboard players operation <frame_11.blue> variable *= #11 constant
scoreboard players operation <frame_11.blue> variable /= #12 constant
scoreboard players operation <frame_11.blue> variable += <left_color.blue> variable

scoreboard players operation <frame_11.rgb> variable = <frame_11.red> variable
scoreboard players operation <frame_11.rgb> variable *= #256 constant
scoreboard players operation <frame_11.rgb> variable += <frame_11.green> variable
scoreboard players operation <frame_11.rgb> variable *= #256 constant
execute store result storage pandamium:local functions."pandamium:triggers/dye/*".color_11 int 1 run scoreboard players operation <frame_11.rgb> variable += <frame_11.blue> variable

# frame 12
scoreboard players operation <frame_12.red> variable *= #12 constant
scoreboard players operation <frame_12.red> variable /= #12 constant
scoreboard players operation <frame_12.red> variable += <left_color.red> variable
scoreboard players operation <frame_12.green> variable *= #12 constant
scoreboard players operation <frame_12.green> variable /= #12 constant
scoreboard players operation <frame_12.green> variable += <left_color.green> variable
scoreboard players operation <frame_12.blue> variable *= #12 constant
scoreboard players operation <frame_12.blue> variable /= #12 constant
scoreboard players operation <frame_12.blue> variable += <left_color.blue> variable

scoreboard players operation <frame_12.rgb> variable = <frame_12.red> variable
scoreboard players operation <frame_12.rgb> variable *= #256 constant
scoreboard players operation <frame_12.rgb> variable += <frame_12.green> variable
scoreboard players operation <frame_12.rgb> variable *= #256 constant
execute store result storage pandamium:local functions."pandamium:triggers/dye/*".color_12 int 1 run scoreboard players operation <frame_12.rgb> variable += <frame_12.blue> variable

# apply change
scoreboard players set <chosen_type> variable 5
function pandamium:triggers/dye/change_type
