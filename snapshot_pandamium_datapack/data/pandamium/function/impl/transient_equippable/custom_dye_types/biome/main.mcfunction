execute if predicate pandamium:periodic_tick/1s run function pandamium:impl/transient_equippable/custom_dye_types/biome/get_biome_color/main

execute if @s custom_dye.color_transition.time_since_change > @s custom_dye.color_transition.duration run return 0

scoreboard players operation @s custom_dye.color_transition.current_red = @s custom_dye.color_transition.target_red
scoreboard players operation @s custom_dye.color_transition.current_red -= @s custom_dye.color_transition.start_red
scoreboard players operation @s custom_dye.color_transition.current_red *= @s custom_dye.color_transition.time_since_change
scoreboard players operation @s custom_dye.color_transition.current_red /= @s custom_dye.color_transition.duration
scoreboard players operation @s custom_dye.color_transition.current_red += @s custom_dye.color_transition.start_red

scoreboard players operation <custom_dye.color> variable = @s custom_dye.color_transition.current_red

scoreboard players operation @s custom_dye.color_transition.current_green = @s custom_dye.color_transition.target_green
scoreboard players operation @s custom_dye.color_transition.current_green -= @s custom_dye.color_transition.start_green
scoreboard players operation @s custom_dye.color_transition.current_green *= @s custom_dye.color_transition.time_since_change
scoreboard players operation @s custom_dye.color_transition.current_green /= @s custom_dye.color_transition.duration
scoreboard players operation @s custom_dye.color_transition.current_green += @s custom_dye.color_transition.start_green

scoreboard players operation <custom_dye.color> variable *= #256 constant
scoreboard players operation <custom_dye.color> variable += @s custom_dye.color_transition.current_green

scoreboard players operation @s custom_dye.color_transition.current_blue = @s custom_dye.color_transition.target_blue
scoreboard players operation @s custom_dye.color_transition.current_blue -= @s custom_dye.color_transition.start_blue
scoreboard players operation @s custom_dye.color_transition.current_blue *= @s custom_dye.color_transition.time_since_change
scoreboard players operation @s custom_dye.color_transition.current_blue /= @s custom_dye.color_transition.duration
scoreboard players operation @s custom_dye.color_transition.current_blue += @s custom_dye.color_transition.start_blue

scoreboard players operation <custom_dye.color> variable *= #256 constant
execute store result storage pandamium:local functions."pandamium:impl/transient_equippable/custom_dye_types/biome/main".rgb int 1 run scoreboard players operation <custom_dye.color> variable += @s custom_dye.color_transition.current_blue

function pandamium:impl/transient_equippable/custom_dye_types/biome/modify with storage pandamium:local functions."pandamium:impl/transient_equippable/custom_dye_types/biome/main"
