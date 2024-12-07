execute unless data storage pandamium.db.players:io selected.entry.data.custom_dye{type:5b} run return 0

data modify storage pandamium:local functions."pandamium:utils/database/players/modify/cache_animated_gradient" set value {}

# decompose left colour
execute store result score <left_color.red> variable store result score <left_color.green> variable store result storage pandamium:local functions."pandamium:utils/database/players/modify/cache_animated_gradient".color_0 int 1 run data get storage pandamium.db.players:io selected.entry.data.custom_dye.colors[0]
scoreboard players operation <left_color.red> variable %= #256 constant
execute store result score <left_color.blue> variable run scoreboard players operation <left_color.green> variable /= #256 constant
scoreboard players operation <left_color.green> variable %= #256 constant
scoreboard players operation <left_color.blue> variable /= #256 constant

# decompose right colour, and get colour range
execute store result score <color_range.red> variable store result score <color_range.green> variable store result storage pandamium:local functions."pandamium:utils/database/players/modify/cache_animated_gradient".color_23 int 1 run data get storage pandamium.db.players:io selected.entry.data.custom_dye.colors[-1]
scoreboard players operation <color_range.red> variable %= #256 constant
execute store result score <color_range.blue> variable run scoreboard players operation <color_range.green> variable /= #256 constant
scoreboard players operation <color_range.green> variable %= #256 constant
scoreboard players operation <color_range.blue> variable /= #256 constant

execute store result score <color_1.red> variable store result score <color_2.red> variable store result score <color_3.red> variable store result score <color_4.red> variable store result score <color_5.red> variable store result score <color_6.red> variable store result score <color_7.red> variable store result score <color_8.red> variable store result score <color_9.red> variable store result score <color_10.red> variable store result score <color_11.red> variable store result score <color_12.red> variable store result score <color_13.red> variable store result score <color_14.red> variable store result score <color_15.red> variable store result score <color_16.red> variable store result score <color_17.red> variable store result score <color_18.red> variable store result score <color_19.red> variable store result score <color_20.red> variable store result score <color_21.red> variable store result score <color_22.red> variable run scoreboard players operation <color_range.red> variable -= <left_color.red> variable
execute store result score <color_1.green> variable store result score <color_2.green> variable store result score <color_3.green> variable store result score <color_4.green> variable store result score <color_5.green> variable store result score <color_6.green> variable store result score <color_7.green> variable store result score <color_8.green> variable store result score <color_9.green> variable store result score <color_10.green> variable store result score <color_11.green> variable store result score <color_12.green> variable store result score <color_13.green> variable store result score <color_14.green> variable store result score <color_15.green> variable store result score <color_16.green> variable store result score <color_17.green> variable store result score <color_18.green> variable store result score <color_19.green> variable store result score <color_20.green> variable store result score <color_21.green> variable store result score <color_22.green> variable run scoreboard players operation <color_range.green> variable -= <left_color.green> variable
execute store result score <color_1.blue> variable store result score <color_2.blue> variable store result score <color_3.blue> variable store result score <color_4.blue> variable store result score <color_5.blue> variable store result score <color_6.blue> variable store result score <color_7.blue> variable store result score <color_8.blue> variable store result score <color_9.blue> variable store result score <color_10.blue> variable store result score <color_11.blue> variable store result score <color_12.blue> variable store result score <color_13.blue> variable store result score <color_14.blue> variable store result score <color_15.blue> variable store result score <color_16.blue> variable store result score <color_17.blue> variable store result score <color_18.blue> variable store result score <color_19.blue> variable store result score <color_20.blue> variable store result score <color_21.blue> variable store result score <color_22.blue> variable run scoreboard players operation <color_range.blue> variable -= <left_color.blue> variable

# colour 1
scoreboard players operation <color_1.red> variable /= #12 constant
scoreboard players operation <color_1.red> variable += <left_color.red> variable
scoreboard players operation <color_1.green> variable /= #12 constant
scoreboard players operation <color_1.green> variable += <left_color.green> variable
scoreboard players operation <color_1.blue> variable /= #12 constant
scoreboard players operation <color_1.blue> variable += <left_color.blue> variable

scoreboard players operation <color_1.rgb> variable = <color_1.red> variable
scoreboard players operation <color_1.rgb> variable *= #256 constant
scoreboard players operation <color_1.rgb> variable += <color_1.green> variable
scoreboard players operation <color_1.rgb> variable *= #256 constant
execute store result storage pandamium:local functions."pandamium:utils/database/players/modify/cache_animated_gradient".color_1 int 1 run scoreboard players operation <color_1.rgb> variable += <color_1.blue> variable

# colour 2
scoreboard players operation <color_2.red> variable /= #6 constant
scoreboard players operation <color_2.red> variable += <left_color.red> variable
scoreboard players operation <color_2.green> variable /= #6 constant
scoreboard players operation <color_2.green> variable += <left_color.green> variable
scoreboard players operation <color_2.blue> variable /= #6 constant
scoreboard players operation <color_2.blue> variable += <left_color.blue> variable

scoreboard players operation <color_2.rgb> variable = <color_2.red> variable
scoreboard players operation <color_2.rgb> variable *= #256 constant
scoreboard players operation <color_2.rgb> variable += <color_2.green> variable
scoreboard players operation <color_2.rgb> variable *= #256 constant
execute store result storage pandamium:local functions."pandamium:utils/database/players/modify/cache_animated_gradient".color_2 int 1 run scoreboard players operation <color_2.rgb> variable += <color_2.blue> variable

# colour 3
scoreboard players operation <color_3.red> variable /= #4 constant
scoreboard players operation <color_3.red> variable += <left_color.red> variable
scoreboard players operation <color_3.green> variable /= #4 constant
scoreboard players operation <color_3.green> variable += <left_color.green> variable
scoreboard players operation <color_3.blue> variable /= #4 constant
scoreboard players operation <color_3.blue> variable += <left_color.blue> variable

scoreboard players operation <color_3.rgb> variable = <color_3.red> variable
scoreboard players operation <color_3.rgb> variable *= #256 constant
scoreboard players operation <color_3.rgb> variable += <color_3.green> variable
scoreboard players operation <color_3.rgb> variable *= #256 constant
execute store result storage pandamium:local functions."pandamium:utils/database/players/modify/cache_animated_gradient".color_3 int 1 run scoreboard players operation <color_3.rgb> variable += <color_3.blue> variable

# colour 4
scoreboard players operation <color_4.red> variable /= #3 constant
scoreboard players operation <color_4.red> variable += <left_color.red> variable
scoreboard players operation <color_4.green> variable /= #3 constant
scoreboard players operation <color_4.green> variable += <left_color.green> variable
scoreboard players operation <color_4.blue> variable /= #3 constant
scoreboard players operation <color_4.blue> variable += <left_color.blue> variable

scoreboard players operation <color_4.rgb> variable = <color_4.red> variable
scoreboard players operation <color_4.rgb> variable *= #256 constant
scoreboard players operation <color_4.rgb> variable += <color_4.green> variable
scoreboard players operation <color_4.rgb> variable *= #256 constant
execute store result storage pandamium:local functions."pandamium:utils/database/players/modify/cache_animated_gradient".color_4 int 1 run scoreboard players operation <color_4.rgb> variable += <color_4.blue> variable

# colour 5
scoreboard players operation <color_5.red> variable *= #5 constant
scoreboard players operation <color_5.red> variable /= #12 constant
scoreboard players operation <color_5.red> variable += <left_color.red> variable
scoreboard players operation <color_5.green> variable *= #5 constant
scoreboard players operation <color_5.green> variable /= #12 constant
scoreboard players operation <color_5.green> variable += <left_color.green> variable
scoreboard players operation <color_5.blue> variable *= #5 constant
scoreboard players operation <color_5.blue> variable /= #12 constant
scoreboard players operation <color_5.blue> variable += <left_color.blue> variable

scoreboard players operation <color_5.rgb> variable = <color_5.red> variable
scoreboard players operation <color_5.rgb> variable *= #256 constant
scoreboard players operation <color_5.rgb> variable += <color_5.green> variable
scoreboard players operation <color_5.rgb> variable *= #256 constant
execute store result storage pandamium:local functions."pandamium:utils/database/players/modify/cache_animated_gradient".color_5 int 1 run scoreboard players operation <color_5.rgb> variable += <color_5.blue> variable

# colour 6
scoreboard players operation <color_6.red> variable /= #2 constant
scoreboard players operation <color_6.red> variable += <left_color.red> variable
scoreboard players operation <color_6.green> variable /= #2 constant
scoreboard players operation <color_6.green> variable += <left_color.green> variable
scoreboard players operation <color_6.blue> variable /= #2 constant
scoreboard players operation <color_6.blue> variable += <left_color.blue> variable

scoreboard players operation <color_6.rgb> variable = <color_6.red> variable
scoreboard players operation <color_6.rgb> variable *= #256 constant
scoreboard players operation <color_6.rgb> variable += <color_6.green> variable
scoreboard players operation <color_6.rgb> variable *= #256 constant
execute store result storage pandamium:local functions."pandamium:utils/database/players/modify/cache_animated_gradient".color_6 int 1 run scoreboard players operation <color_6.rgb> variable += <color_6.blue> variable

# colour 7
scoreboard players operation <color_7.red> variable *= #7 constant
scoreboard players operation <color_7.red> variable /= #12 constant
scoreboard players operation <color_7.red> variable += <left_color.red> variable
scoreboard players operation <color_7.green> variable *= #7 constant
scoreboard players operation <color_7.green> variable /= #12 constant
scoreboard players operation <color_7.green> variable += <left_color.green> variable
scoreboard players operation <color_7.blue> variable *= #7 constant
scoreboard players operation <color_7.blue> variable /= #12 constant
scoreboard players operation <color_7.blue> variable += <left_color.blue> variable

scoreboard players operation <color_7.rgb> variable = <color_7.red> variable
scoreboard players operation <color_7.rgb> variable *= #256 constant
scoreboard players operation <color_7.rgb> variable += <color_7.green> variable
scoreboard players operation <color_7.rgb> variable *= #256 constant
execute store result storage pandamium:local functions."pandamium:utils/database/players/modify/cache_animated_gradient".color_7 int 1 run scoreboard players operation <color_7.rgb> variable += <color_7.blue> variable

# colour 8
scoreboard players operation <color_8.red> variable *= #8 constant
scoreboard players operation <color_8.red> variable /= #12 constant
scoreboard players operation <color_8.red> variable += <left_color.red> variable
scoreboard players operation <color_8.green> variable *= #8 constant
scoreboard players operation <color_8.green> variable /= #12 constant
scoreboard players operation <color_8.green> variable += <left_color.green> variable
scoreboard players operation <color_8.blue> variable *= #8 constant
scoreboard players operation <color_8.blue> variable /= #12 constant
scoreboard players operation <color_8.blue> variable += <left_color.blue> variable

scoreboard players operation <color_8.rgb> variable = <color_8.red> variable
scoreboard players operation <color_8.rgb> variable *= #256 constant
scoreboard players operation <color_8.rgb> variable += <color_8.green> variable
scoreboard players operation <color_8.rgb> variable *= #256 constant
execute store result storage pandamium:local functions."pandamium:utils/database/players/modify/cache_animated_gradient".color_8 int 1 run scoreboard players operation <color_8.rgb> variable += <color_8.blue> variable

# colour 9
scoreboard players operation <color_9.red> variable *= #9 constant
scoreboard players operation <color_9.red> variable /= #12 constant
scoreboard players operation <color_9.red> variable += <left_color.red> variable
scoreboard players operation <color_9.green> variable *= #9 constant
scoreboard players operation <color_9.green> variable /= #12 constant
scoreboard players operation <color_9.green> variable += <left_color.green> variable
scoreboard players operation <color_9.blue> variable *= #9 constant
scoreboard players operation <color_9.blue> variable /= #12 constant
scoreboard players operation <color_9.blue> variable += <left_color.blue> variable

scoreboard players operation <color_9.rgb> variable = <color_9.red> variable
scoreboard players operation <color_9.rgb> variable *= #256 constant
scoreboard players operation <color_9.rgb> variable += <color_9.green> variable
scoreboard players operation <color_9.rgb> variable *= #256 constant
execute store result storage pandamium:local functions."pandamium:utils/database/players/modify/cache_animated_gradient".color_9 int 1 run scoreboard players operation <color_9.rgb> variable += <color_9.blue> variable

# colour 10
scoreboard players operation <color_10.red> variable *= #10 constant
scoreboard players operation <color_10.red> variable /= #12 constant
scoreboard players operation <color_10.red> variable += <left_color.red> variable
scoreboard players operation <color_10.green> variable *= #10 constant
scoreboard players operation <color_10.green> variable /= #12 constant
scoreboard players operation <color_10.green> variable += <left_color.green> variable
scoreboard players operation <color_10.blue> variable *= #10 constant
scoreboard players operation <color_10.blue> variable /= #12 constant
scoreboard players operation <color_10.blue> variable += <left_color.blue> variable

scoreboard players operation <color_10.rgb> variable = <color_10.red> variable
scoreboard players operation <color_10.rgb> variable *= #256 constant
scoreboard players operation <color_10.rgb> variable += <color_10.green> variable
scoreboard players operation <color_10.rgb> variable *= #256 constant
execute store result storage pandamium:local functions."pandamium:utils/database/players/modify/cache_animated_gradient".color_10 int 1 run scoreboard players operation <color_10.rgb> variable += <color_10.blue> variable

# colour 11
scoreboard players operation <color_11.red> variable *= #11 constant
scoreboard players operation <color_11.red> variable /= #12 constant
scoreboard players operation <color_11.red> variable += <left_color.red> variable
scoreboard players operation <color_11.green> variable *= #11 constant
scoreboard players operation <color_11.green> variable /= #12 constant
scoreboard players operation <color_11.green> variable += <left_color.green> variable
scoreboard players operation <color_11.blue> variable *= #11 constant
scoreboard players operation <color_11.blue> variable /= #12 constant
scoreboard players operation <color_11.blue> variable += <left_color.blue> variable

scoreboard players operation <color_11.rgb> variable = <color_11.red> variable
scoreboard players operation <color_11.rgb> variable *= #256 constant
scoreboard players operation <color_11.rgb> variable += <color_11.green> variable
scoreboard players operation <color_11.rgb> variable *= #256 constant
execute store result storage pandamium:local functions."pandamium:utils/database/players/modify/cache_animated_gradient".color_11 int 1 run scoreboard players operation <color_11.rgb> variable += <color_11.blue> variable

# colour 12
scoreboard players operation <color_12.red> variable += <left_color.red> variable
scoreboard players operation <color_12.green> variable += <left_color.green> variable
scoreboard players operation <color_12.blue> variable += <left_color.blue> variable

scoreboard players operation <color_12.rgb> variable = <color_12.red> variable
scoreboard players operation <color_12.rgb> variable *= #256 constant
scoreboard players operation <color_12.rgb> variable += <color_12.green> variable
scoreboard players operation <color_12.rgb> variable *= #256 constant
execute store result storage pandamium:local functions."pandamium:utils/database/players/modify/cache_animated_gradient".color_12 int 1 run scoreboard players operation <color_12.rgb> variable += <color_12.blue> variable

data modify storage pandamium:local functions."pandamium:utils/database/players/modify/cache_animated_gradient".username set from storage pandamium.db.players:io selected.entry.username
return run function pandamium:impl/database/cache/modify/add_custom_dye.gradient_entry/main with storage pandamium:local functions."pandamium:utils/database/players/modify/cache_animated_gradient"
