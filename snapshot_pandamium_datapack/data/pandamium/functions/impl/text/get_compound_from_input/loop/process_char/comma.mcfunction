execute unless data storage pandamium:temp last{type:"compound"} unless data storage pandamium:temp last{type:"list"} run function pandamium:impl/text/get_compound_from_input/raise_error {message:'{"text":"Unexpected comma"}'}
execute unless data storage pandamium:temp last{type:"compound"} unless data storage pandamium:temp last{type:"list"} run return 0

execute if data storage pandamium:temp last{expect:1b} run function pandamium:impl/text/get_compound_from_input/raise_error {message:'{"text":"Unexpected comma"}'}
execute if data storage pandamium:temp last{expect:1b} run return 0

data modify storage pandamium:temp stack[-1].expect set value 1b
