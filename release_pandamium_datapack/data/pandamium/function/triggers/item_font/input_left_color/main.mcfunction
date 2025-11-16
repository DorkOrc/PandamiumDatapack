# enter gradient left index
execute if score @s item_font matches -199..-101 run scoreboard players set <left_colour_id> variable -100
execute if score @s item_font matches -199..-101 run scoreboard players operation <left_colour_id> variable -= @s item_font
execute if score @s item_font matches -199..-101 run return run function pandamium:impl/font/custom_styles/gradient/enter_left_colour
