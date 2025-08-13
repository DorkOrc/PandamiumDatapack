data modify storage pandamium:temp reading_slice set string storage pandamium:text input 0 3

execute unless data storage pandamium:temp {reading_slice:"rue"} run function pandamium:impl/text/get_compound_from_input/raise_error {message:'{"text":"Unexpected character"}'}
execute unless data storage pandamium:temp {reading_slice:"rue"} run return 0

data modify storage pandamium:text input set string storage pandamium:text input 3
data modify storage pandamium:temp stack append value {type:"boolean",value:1b}

function pandamium:impl/text/get_compound_from_input/push/main
