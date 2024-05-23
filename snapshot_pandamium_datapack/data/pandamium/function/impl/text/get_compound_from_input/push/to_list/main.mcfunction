execute if data storage pandamium:temp push_source{type:"string"} run function pandamium:impl/text/get_compound_from_input/push/to_list/resolve_string

execute unless data storage pandamium:temp push_source{type:"compound"} unless data storage pandamium:temp push_source{type:"integer"} run function pandamium:impl/text/get_compound_from_input/raise_error {message:'{"text":"Illegal push: Cannot push ","extra":[{"storage":"pandamium:temp","nbt":"push_source.type","bold":true}," into a list"]}'}
execute unless data storage pandamium:temp push_source{type:"compound"} unless data storage pandamium:temp push_source{type:"integer"} run return 0

scoreboard players set <different> variable 1
data modify storage pandamium:temp compare set from storage pandamium:temp push_source.type
execute if data storage pandamium:temp push_target.contents_type store success score <different> variable run data modify storage pandamium:temp compare set from storage pandamium:temp push_target.contents_type
execute if score <different> variable matches 1 run function pandamium:impl/text/get_compound_from_input/push/to_list/check_type
execute if score <different> variable matches 1 run return 0

execute if data storage pandamium:temp push_source.lines run function pandamium:impl/text/get_compound_from_input/push/merge_lines/merge_lines_after

data modify storage pandamium:temp stack[-2].value append from storage pandamium:temp push_source.value
data remove storage pandamium:temp stack[-1]
