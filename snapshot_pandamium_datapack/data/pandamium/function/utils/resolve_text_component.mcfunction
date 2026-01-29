# arguments: text_component, write_to

$data modify storage do:io input set value $(text_component)
function do:text/resolve
$data modify $(write_to) set from storage do:io output
