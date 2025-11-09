# arguments: content

$data modify storage pandamium:local functions."pandamium:impl/text/escape_double_quotes/*".compound set value {_:'\'$(content)'}
execute in pandamium:staff_world run item modify block 5 1 0 contents {function:"minecraft:set_name",entity:"this",name:{storage:"pandamium:local",nbt:'functions."pandamium:impl/text/escape_double_quotes/*".compound'}}
execute in pandamium:staff_world run data modify storage pandamium:local functions."pandamium:impl/text/escape_double_quotes/*".content set string block 5 1 0 item.components.minecraft:custom_name 5 -2
