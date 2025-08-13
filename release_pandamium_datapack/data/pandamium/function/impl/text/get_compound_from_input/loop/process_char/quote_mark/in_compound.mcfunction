data modify storage pandamium:temp stack append value {type:"keyword",expect:0b}

function pandamium:impl/text/get_compound_from_input/read_string/main
data modify storage pandamium:temp stack[-2].keyword set from storage pandamium:temp stack[-1].value
data remove storage pandamium:temp stack[-1]
