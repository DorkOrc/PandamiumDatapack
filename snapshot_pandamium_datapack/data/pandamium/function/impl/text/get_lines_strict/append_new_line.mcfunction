# arguments: line_start_index, line_end_index, (current_index)

$data modify storage pandamium:local functions."pandamium:impl/text/get_lines_strict/*".this_line set string storage pandamium:local functions."pandamium:impl/text/get_lines_strict/*".original_string $(line_start_index) $(line_end_index)
execute unless data storage pandamium:local functions."pandamium:impl/text/get_lines_strict/*"{this_line:""} run data modify storage pandamium:text output append from storage pandamium:local functions."pandamium:impl/text/get_lines_strict/*".this_line

