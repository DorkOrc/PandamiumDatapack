data modify storage pandamium:text input set from storage pandamium:temp text

scoreboard players set <is_same_colour> variable 0
execute if score <start_red> variable = <end_red> variable if score <start_green> variable = <end_green> variable if score <start_blue> variable = <end_blue> variable run scoreboard players set <is_same_colour> variable 1

execute if score <is_same_colour> variable matches 1 run function pandamium:impl/font/custom_styles/gradient/do_solid
execute if score <is_same_colour> variable matches 0 run function pandamium:impl/font/custom_styles/gradient/do_gradient
