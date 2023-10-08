execute store result score <length> variable if data storage pandamium:temp stack[]
execute if score <length> variable matches ..1 run data modify storage pandamium:text output set from storage pandamium:temp stack[0].value
execute if score <length> variable matches ..1 run return 0

data modify storage pandamium:temp push_source set from storage pandamium:temp stack[-1]
data modify storage pandamium:temp push_target set from storage pandamium:temp stack[-2]

execute if data storage pandamium:temp push_target{expect:0b} run function pandamium:impl/text/get_compound_from_input/raise_error {message:'{"text":"Illegal push: Unexpected push into ","extra":[{"storage":"pandamium:temp","nbt":"push_target.type"}]}'}

execute if data storage pandamium:temp push_target{type:"compound"} run function pandamium:impl/text/get_compound_from_input/push/to_compound/main
execute if data storage pandamium:temp push_target{type:"list"} run function pandamium:impl/text/get_compound_from_input/push/to_list/main
execute if data storage pandamium:temp push_target{type:"keyword"} run function pandamium:impl/text/get_compound_from_input/push/to_keyword/main

data modify storage pandamium:temp stack[-1].expect set value 0b
