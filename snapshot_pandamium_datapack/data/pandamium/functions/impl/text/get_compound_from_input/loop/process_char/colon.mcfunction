execute unless data storage pandamium:temp last{type:"keyword"} run function pandamium:impl/text/get_compound_from_input/raise_error {message:'{"text":"Unexpected colon"}'}
execute unless data storage pandamium:temp last{type:"keyword"} run return 0

execute if data storage pandamium:temp last{expect:1b} run function pandamium:impl/text/get_compound_from_input/raise_error {message:'{"text":"Unexpected colon"}'}
execute if data storage pandamium:temp last{expect:1b} run return 0

data modify storage pandamium:temp stack[-1].expect set value 1b
