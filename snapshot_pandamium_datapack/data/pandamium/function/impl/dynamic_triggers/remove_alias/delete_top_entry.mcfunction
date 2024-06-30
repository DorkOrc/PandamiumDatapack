# arguments: index

$data modify storage pandamium.dynamic_triggers:data function_macros.post_lines."$(index)a" set value "return 0"
$data modify storage pandamium.dynamic_triggers:data function_macros.post_lines."$(index)b" set value "return 0"
