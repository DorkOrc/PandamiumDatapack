# arguments: suffix

$data modify storage pandamium:local functions."pandamium:impl/text/concatenate_strings/*".compound set value {_:'\'$(suffix)'}
execute in pandamium:staff_world run item modify block 5 1 0 contents {function:"minecraft:set_name",entity:"this",name:{storage:"pandamium:local",nbt:'functions."pandamium:impl/text/concatenate_strings/*".compound'}}
execute in pandamium:staff_world run data modify storage pandamium:local functions."pandamium:impl/text/concatenate_strings/*".suffix set string block 5 1 0 item.components.minecraft:custom_name 5 -2
