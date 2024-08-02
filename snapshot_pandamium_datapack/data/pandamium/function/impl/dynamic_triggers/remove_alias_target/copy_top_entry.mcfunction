# arguments: index

$data modify storage pandamium.dynamic_triggers:data macros.main.entries[$(index)] set from storage pandamium.dynamic_triggers:data macros.main.entries[-1]
$data modify storage pandamium.dynamic_triggers:data macros.main.entries[$(index)].index set value $(index)
$data modify storage pandamium.dynamic_triggers:data macros.main.lines."$(index)" set from storage pandamium.dynamic_triggers:data macros.main.entries[$(index)].command
