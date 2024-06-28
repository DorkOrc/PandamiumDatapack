# arguments: uuid

# check if target exists
$execute unless data storage pandamium.dynamic_triggers:data aliases[].targets[{uuid:$(uuid)}] run return fail

# remove from function macro
$function pandamium:impl/dynamic_triggers/remove_alias_target/copy_top_entry with storage pandamium.dynamic_triggers:data function_macros.entries[{uuid:$(uuid)}]

function pandamium:impl/dynamic_triggers/remove_alias_target/delete_top_entry with storage pandamium.dynamic_triggers:data function_macros.entries[-1]

data remove storage pandamium.dynamic_triggers:data function_macros.entries[-1]

# remove target
$data remove storage pandamium.dynamic_triggers:data aliases[].targets[{uuid:$(uuid)}]

# prune unused aliases
execute if data storage pandamium.dynamic_triggers:data aliases[0] run data modify storage pandamium.dynamic_triggers:data aliases[].meta.__has_targets__ set value 0b
execute if data storage pandamium.dynamic_triggers:data aliases[{targets:[{}]}] run data modify storage pandamium.dynamic_triggers:data aliases[{targets:[{}]}].meta.__has_targets__ set value 1b
execute if data storage pandamium.dynamic_triggers:data aliases[0] run function pandamium:impl/dynamic_triggers/remove_alias/main with storage pandamium.dynamic_triggers:data aliases[{meta:{__has_targets__:0b}}]
execute if data storage pandamium.dynamic_triggers:data aliases[0] run data remove storage pandamium.dynamic_triggers:data aliases[].meta.__has_targets__
