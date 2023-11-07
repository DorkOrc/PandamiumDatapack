# arguments: value, substring

$data modify storage pandamium:temp stack[-1].value set value "$(value)$(substring)"
$data modify storage pandamium:temp stack[-1].lines append value "$(substring)"
