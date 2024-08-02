# arguments: index

$data modify storage pandamium.dynamic_triggers:data macros.post.lines."$(index)a" set from storage pandamium:temp alias_entry.post_commands[0]
$data modify storage pandamium.dynamic_triggers:data macros.post.lines."$(index)b" set from storage pandamium:temp alias_entry.post_commands[1]
