# arguments:
# inputs: (storage pandamium:text input)

data modify storage pandamium:temp arguments set value {}

data remove storage pandamium:text compound
data modify storage pandamium:temp stack set value []
data remove storage pandamium:temp error_message
scoreboard players set <success> variable 1

# resolve
execute in pandamium:staff_world run data modify block 3 0 0 front_text.messages[0] set value '{"storage":"pandamium:text","nbt":"input","interpret":true}'
execute in pandamium:staff_world run data modify storage pandamium:text input set from block 3 0 0 front_text.messages[0]

# first try to use JSON->SNBT->NBT trick
#execute in pandamium:staff_world run data modify block 3 0 0 front_text.messages[0] set value '{"storage":"pandamium:text","nbt":"input"}'
#execute in pandamium:staff_world run data modify storage pandamium:templates macro.json.json set string block 3 0 0 front_text.messages[0] 1 -1
data modify storage pandamium:templates macro.json.json set from storage pandamium:text input
function pandamium:impl/text/get_compound_from_input/try_snbt_interpret with storage pandamium:templates macro.json
execute if data storage pandamium:text compound run return 0

# if that fails, parse manually
function pandamium:impl/text/get_compound_from_input/loop

execute if data storage pandamium:temp error_message run tellraw @s {"storage":"pandamium:temp","nbt":"error_message","interpret":true,"color":"red"}
execute if data storage pandamium:temp error_message run return 0

data modify storage pandamium:text compound set value {}

data modify storage pandamium:temp type set from storage pandamium:temp stack[0].type
execute if data storage pandamium:temp {type:"string"} run data modify storage pandamium:text compound.text set from storage pandamium:temp stack[0].value
execute unless data storage pandamium:temp {type:"string"} run data modify storage pandamium:text compound set from storage pandamium:temp stack[0].value
