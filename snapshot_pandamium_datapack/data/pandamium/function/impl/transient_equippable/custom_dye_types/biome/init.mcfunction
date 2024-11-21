execute at @s run function pandamium:impl/transient_equippable/custom_dye_types/biome/get_biome_color/main

scoreboard players operation @s custom_dye.color_transition.start_red = @s custom_dye.color_transition.target_red
scoreboard players operation @s custom_dye.color_transition.start_green = @s custom_dye.color_transition.target_green
scoreboard players operation @s custom_dye.color_transition.start_blue = @s custom_dye.color_transition.target_blue
scoreboard players set @s custom_dye.color_transition.time_since_change 59
