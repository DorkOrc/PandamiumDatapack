# arguments: line_start_index, current_index

$data modify storage pandamium:text output append string storage pandamium:local functions."pandamium:impl/text/get_lines/*".original_string $(line_start_index) $(current_index)

scoreboard players operation <line_start_index> variable = <current_index> variable
execute store result storage pandamium:local functions."pandamium:impl/text/get_lines/*".line_start_index int 1 run scoreboard players add <line_start_index> variable 1
