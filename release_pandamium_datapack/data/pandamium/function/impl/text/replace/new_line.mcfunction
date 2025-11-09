# arguments: line_start_index, current_index, key_body_length

$data modify storage pandamium:text input append string storage pandamium:local functions."pandamium:impl/text/replace/*".original_string $(line_start_index) $(current_index)

$data modify storage pandamium:local functions."pandamium:impl/text/replace/*".string set string storage pandamium:local functions."pandamium:impl/text/replace/*".string $(key_body_length)
scoreboard players operation <current_index> variable += <key_length> variable
execute store result storage pandamium:local functions."pandamium:impl/text/replace/*".line_start_index int 1 run scoreboard players operation <line_start_index> variable = <current_index> variable
scoreboard players remove <current_index> variable 1
