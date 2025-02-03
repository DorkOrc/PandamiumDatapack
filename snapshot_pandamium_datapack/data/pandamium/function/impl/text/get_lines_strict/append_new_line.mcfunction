# arguments: line_start_index, line_end_index, (current_index)

$data modify storage pandamium:local functions."pandamium:impl/text/get_lines_strict/*".this_line set string storage pandamium:local functions."pandamium:impl/text/get_lines_strict/*".original_string $(line_start_index) $(line_end_index)

execute if data storage pandamium:local functions."pandamium:impl/text/get_lines_strict/*"{this_line:""} unless data storage pandamium:text output[0] run return 0
data modify storage pandamium:local functions."pandamium:impl/text/get_lines_strict/*".previous_line set from storage pandamium:text output[-1]
execute if data storage pandamium:local functions."pandamium:impl/text/get_lines_strict/*"{this_line:""} if data storage pandamium:local functions."pandamium:impl/text/get_lines_strict/*"{previous_line:""} run return 0
data modify storage pandamium:text output append from storage pandamium:local functions."pandamium:impl/text/get_lines_strict/*".this_line
