# arguments: text_component, write_to

$data modify storage pandamium:text input set value $(text_component)
function pandamium:utils/text/input/resolve
$data modify $(write_to) set from storage pandamium:text input
