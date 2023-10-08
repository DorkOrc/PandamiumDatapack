execute unless data storage pandamium:temp push_source{type:"keyword"} run function pandamium:impl/text/get_compound_from_input/raise_error {message:'{"text":"Illegal push: Cannot push ","extra":[{"storage":"pandamium:temp","nbt":"push_source.type","bold":true}," into a compound"]}'}
execute unless data storage pandamium:temp push_source{type:"keyword"} run return 0

execute in pandamium:staff_world run data modify block 3 0 0 front_text.messages[0] set value '{"storage":"pandamium:temp","nbt":"stack[-1].keyword"}'
execute in pandamium:staff_world run data modify storage pandamium:temp arguments.keyword set string block 3 0 0 front_text.messages[0] 1 -1
function pandamium:impl/text/get_compound_from_input/push/to_compound/with_keyword with storage pandamium:temp arguments
data remove storage pandamium:temp stack[-1]
