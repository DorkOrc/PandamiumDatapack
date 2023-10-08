execute unless data storage pandamium:temp last{type:"compound"} run function pandamium:impl/text/get_compound_from_input/raise_error {message:'{"text":"Unexpected compound termination"}'}
execute unless data storage pandamium:temp last{type:"compound"} run return 0

execute store result score <length> variable run data get storage pandamium:temp last.value
execute if data storage pandamium:temp last{expect:1b} if score <length> variable matches 1.. run function pandamium:impl/text/get_compound_from_input/raise_error {message:'{"text":"Unexpected compound termination"}'}
execute if data storage pandamium:temp last{expect:1b} if score <length> variable matches 1.. run return 0

function pandamium:impl/text/get_compound_from_input/push/main
