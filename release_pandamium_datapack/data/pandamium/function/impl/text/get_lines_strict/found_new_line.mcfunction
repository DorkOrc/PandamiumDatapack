execute store result storage pandamium:local functions."pandamium:impl/text/get_lines_strict/*".line_start_index int 1 run scoreboard players get <line_start_index> variable
execute store result storage pandamium:local functions."pandamium:impl/text/get_lines_strict/*".line_end_index int 1 run scoreboard players get <line_end_index> variable

execute unless score <line_end_index> variable < <line_start_index> variable run function pandamium:impl/text/get_lines_strict/append_new_line with storage pandamium:local functions."pandamium:impl/text/get_lines_strict/*"

scoreboard players operation <line_start_index> variable = <current_index> variable
scoreboard players add <line_start_index> variable 1
scoreboard players operation <line_end_index> variable = <line_start_index> variable
