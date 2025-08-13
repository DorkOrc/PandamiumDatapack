data modify storage pandamium:temp reading_slice set string storage pandamium:text input 0 4

execute unless data storage pandamium:temp {reading_slice:"alse"} run function pandamium:impl/text/get_compound_from_input/raise_error {message:'{"text":"Unexpected character"}'}
execute unless data storage pandamium:temp {reading_slice:"alse"} run return 0

data modify storage pandamium:text input set string storage pandamium:text input 4
data modify storage pandamium:temp stack append value {type:"boolean",value:0b}

function pandamium:impl/text/get_compound_from_input/push/main
