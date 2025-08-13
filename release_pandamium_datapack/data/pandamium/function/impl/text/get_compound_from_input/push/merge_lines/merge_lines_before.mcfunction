data modify storage pandamium:temp merge_lines set value [[""]]
data modify storage pandamium:temp merge_lines[0] set from storage pandamium:temp push_target.lines
data modify storage pandamium:temp merge_lines prepend from storage pandamium:temp push_source.lines
function pandamium:impl/text/get_compound_from_input/push/merge_lines/main
data modify storage pandamium:temp stack[-2].lines set from storage pandamium:temp merge_lines[0]
