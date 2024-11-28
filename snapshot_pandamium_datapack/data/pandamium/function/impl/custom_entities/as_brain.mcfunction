# arguments: custom_entity_type

$execute on vehicle at @s[tag=pandamium.custom_entity.root,tag=pandamium.custom_entity.type.$(custom_entity_type)] run return run function pandamium:impl/custom_entities/custom_entity_types/$(custom_entity_type)/tick with storage pandamium:local functions."pandamium:impl/custom_entities/*".brain_data
$execute at @s run function pandamium:impl/custom_entities/custom_entity_types/$(custom_entity_type)/tick_fallback with storage pandamium:local functions."pandamium:impl/custom_entities/*".brain_data
