# arguments: value

$execute if score <is_float> variable matches 0 run data modify storage pandamium:temp stack[-1].value set value $(value)
$execute if score <is_float> variable matches 1 run data modify storage pandamium:temp stack[-1].value set value $(value)f
