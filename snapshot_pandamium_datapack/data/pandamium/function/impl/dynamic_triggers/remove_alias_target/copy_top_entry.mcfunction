# arguments: index

$data modify storage pandamium.dynamic_triggers:data function_macros.entries[$(index)] set from storage pandamium.dynamic_triggers:data function_macros.entries[-1]
$data modify storage pandamium.dynamic_triggers:data function_macros.entries[$(index)].index set value $(index)
$data modify storage pandamium.dynamic_triggers:data function_macros.lines."$(index)" set from storage pandamium.dynamic_triggers:data function_macros.entries[$(index)].command
