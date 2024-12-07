execute unless score @s custom_dye.gradient.left_color_id matches 1.. run return run tellraw @s [{"text":"[Dye]","color":"dark_red"},{"text":" You must select a left colour first!","color":"red"}]

# get colors
data modify storage pandamium:local functions."pandamium:triggers/dye/*".colors set value [I;0,0]

scoreboard players operation <colour> variable = @s custom_dye.gradient.left_color_id
function pandamium:impl/font/get_colour
execute if score <valid_option> variable matches 0 run return run tellraw @s [{"text":"[Dye]","color":"dark_red"},{"text":" Invalid left colour!","color":"red"}]
data modify storage pandamium:local functions."pandamium:triggers/dye/*".colors[0] set from storage pandamium:temp colour.int

scoreboard players set <colour> variable -200
scoreboard players operation <colour> variable -= @s dye
execute if score <colour> variable = @s custom_dye.gradient.left_color_id run return run tellraw @s [{"text":"[Dye]","color":"dark_red"},{"text":" Both gradient colours cannot be the same!","color":"red"}]
function pandamium:impl/font/get_colour
execute if score <valid_option> variable matches 0 run return run tellraw @s [{"text":"[Dye]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]
data modify storage pandamium:local functions."pandamium:triggers/dye/*".colors[1] set from storage pandamium:temp colour.int

# apply change
scoreboard players set <chosen_type> variable 5
function pandamium:triggers/dye/change_type
