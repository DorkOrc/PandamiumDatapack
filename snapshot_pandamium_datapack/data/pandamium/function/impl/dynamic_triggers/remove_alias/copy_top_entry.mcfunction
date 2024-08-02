# arguments: index

# copy top entry
$data modify storage pandamium.dynamic_triggers:data macros.post.entries[$(index)] set from storage pandamium.dynamic_triggers:data macros.post.entries[-1]
$data modify storage pandamium.dynamic_triggers:data macros.post.entries[$(index)].index set value $(index)
$data modify storage pandamium.dynamic_triggers:data macros.post.lines."$(index)a" set from storage pandamium.dynamic_triggers:data macros.post.entries[$(index)].commands[0]
$data modify storage pandamium.dynamic_triggers:data macros.post.lines."$(index)b" set from storage pandamium.dynamic_triggers:data macros.post.entries[$(index)].commands[1]
