# arguments: index

$data modify storage pandamium.dynamic_triggers:data macros.post.lines."$(index)a" set value "return 0"
$data modify storage pandamium.dynamic_triggers:data macros.post.lines."$(index)b" set value "return 0"
