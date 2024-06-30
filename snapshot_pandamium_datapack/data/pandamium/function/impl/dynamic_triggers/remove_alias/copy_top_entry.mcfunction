# arguments: index

# copy top entry
$data modify storage pandamium.dynamic_triggers:data function_macros.post_entries[$(index)] set from storage pandamium.dynamic_triggers:data function_macros.post_entries[-1]
$data modify storage pandamium.dynamic_triggers:data function_macros.post_entries[$(index)].index set value $(index)
$data modify storage pandamium.dynamic_triggers:data function_macros.post_lines."$(index)a" set from storage pandamium.dynamic_triggers:data function_macros.post_entries[$(index)].commands[0]
$data modify storage pandamium.dynamic_triggers:data function_macros.post_lines."$(index)b" set from storage pandamium.dynamic_triggers:data function_macros.post_entries[$(index)].commands[1]
