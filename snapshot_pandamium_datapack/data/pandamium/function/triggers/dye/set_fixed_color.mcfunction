scoreboard players set <colour> variable -300
scoreboard players operation <colour> variable -= @s dye

function pandamium:impl/font/get_colour
execute if score <colour> variable matches 40 run data modify storage pandamium:temp colour.int set value 2039583
execute if score <valid_option> variable matches 0 run return run tellraw @s [{"text":"[Dye]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]
data modify storage pandamium:local functions."pandamium:triggers/dye/*".colors set value [I;0]
data modify storage pandamium:local functions."pandamium:triggers/dye/*".colors[0] set from storage pandamium:temp colour.int

#
execute store result storage pandamium:local functions."pandamium:triggers/dye/*".color_0 int 1 store result storage pandamium:local functions."pandamium:triggers/dye/*".color_1 int 1 store result storage pandamium:local functions."pandamium:triggers/dye/*".color_2 int 1 store result storage pandamium:local functions."pandamium:triggers/dye/*".color_3 int 1 store result storage pandamium:local functions."pandamium:triggers/dye/*".color_4 int 1 run data get storage pandamium:local functions."pandamium:triggers/dye/*".colors[0]

# apply change
scoreboard players set <chosen_type> variable 4
function pandamium:triggers/dye/change_type
