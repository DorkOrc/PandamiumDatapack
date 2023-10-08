execute if data storage pandamium:temp {char:" "} run return 0

data remove storage pandamium:temp last
data modify storage pandamium:temp last set from storage pandamium:temp stack[-1]

$data modify storage pandamium:temp arguments.function set from storage pandamium:dictionary json_character_to_function[{character:'$(char)'}].function
function pandamium:impl/text/get_compound_from_input/loop/with_function with storage pandamium:temp arguments

data modify storage pandamium:temp last set from storage pandamium:temp stack[-1]
execute if data storage pandamium:temp stack[0] if data storage pandamium:temp last{type:"keyword"}.value run function pandamium:impl/text/get_compound_from_input/push/main
