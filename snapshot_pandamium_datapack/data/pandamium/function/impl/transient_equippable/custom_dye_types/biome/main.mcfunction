execute unless score @s custom_dye.biome_id = @s custom_dye.biome_id at @s unless loaded ~ ~ ~ run return 0
execute unless score @s custom_dye.biome_id = @s custom_dye.biome_id at @s run function pandamium:impl/transient_equippable/custom_dye_types/biome/init

execute if predicate pandamium:periodic_tick/1s unless predicate pandamium:sneaking at @s if loaded ~ ~ ~ run function pandamium:impl/transient_equippable/custom_dye_types/biome/get_biome_color/main

execute if score @s custom_dye.color_transition.time_since_change > @s custom_dye.color_transition.duration unless items entity @s armor.* #pandamium:leather_player_armor[!dyed_color] run return 0
scoreboard players operation @s custom_dye.color_transition.time_since_change < @s custom_dye.color_transition.duration

execute if entity @s[predicate=pandamium:sneaking,scores={custom_dye.color_transition.duration=60}] run function pandamium:impl/transient_equippable/custom_dye_types/biome/sneak

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
