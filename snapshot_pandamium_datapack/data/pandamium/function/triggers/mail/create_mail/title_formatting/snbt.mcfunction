# arguments: snbt

$data modify storage pandamium:text output set value $(snbt)

# validate text component
return 1
$tellraw @s $(snbt)
