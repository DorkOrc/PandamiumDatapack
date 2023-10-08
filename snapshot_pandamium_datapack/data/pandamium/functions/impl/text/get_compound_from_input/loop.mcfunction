execute if data storage pandamium:text {input:""} run return 0

data modify storage pandamium:temp arguments.char set string storage pandamium:text input 0 1
data modify storage pandamium:text input set string storage pandamium:text input 1

function pandamium:impl/text/get_compound_from_input/loop/logic with storage pandamium:temp arguments

execute if score <success> variable matches 1 run function pandamium:impl/text/get_compound_from_input/loop
