# arguments: front, back

execute if score <is_float> variable matches 0 run data modify storage pandamium:temp stack append value {type:"integer"}
execute if score <is_float> variable matches 1 run data modify storage pandamium:temp stack append value {type:"float"}

$data modify storage pandamium:temp stack[-1].value set string storage pandamium:text input 0 $(front)
function pandamium:impl/text/get_compound_from_input/read_numeric/convert_type with storage pandamium:temp stack[-1]
# this will fail silently if the numeric characters don't make a valid number. The result is it actually gets stored as a string in the `stack[-1].value`. This should be fine as the json text is resolved beforehand anyway.

$data modify storage pandamium:text input set string storage pandamium:text input $(front)
