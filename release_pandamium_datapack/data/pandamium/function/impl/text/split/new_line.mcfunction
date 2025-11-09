# arguments: line_start_index, current_index

$data modify storage pandamium:text output append string storage pandamium:local functions."pandamium:impl/text/split/*".original_string $(line_start_index) $(current_index)

scoreboard players operation <line_start_index> variable = <current_index> variable
execute store result storage pandamium:local functions."pandamium:impl/text/split/*".line_start_index int 1 run scoreboard players operation <line_start_index> variable += <key_length> variable

scoreboard players operation <current_index> variable += <key_length> variable
scoreboard players remove <current_index> variable 1
