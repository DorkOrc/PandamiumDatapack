execute unless data storage pandamium:temp last{type:"list"} run function pandamium:impl/text/get_compound_from_input/raise_error {message:'{"text":"Unexpected list termination"}'}
execute unless data storage pandamium:temp last{type:"list"} run return 0

execute if data storage pandamium:temp last{expect:1b} if data storage pandamium:temp last.value[0] run function pandamium:impl/text/get_compound_from_input/raise_error {message:'{"text":"Unexpected list termination"}'}
execute if data storage pandamium:temp last{expect:1b} if data storage pandamium:temp last.value[0] run return 0

function pandamium:impl/text/get_compound_from_input/push/main
