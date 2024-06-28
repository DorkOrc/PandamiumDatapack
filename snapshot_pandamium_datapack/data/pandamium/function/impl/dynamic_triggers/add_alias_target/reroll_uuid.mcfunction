# arguments: uuid

$execute unless storage pandamium.dynamic_triggers:data triggers[].targets[{uuid:$(uuid)}] run return 1
execute in pandamium:staff_world positioned 0 0 0 summon area_effect_cloud run data modify storage pandamium:temp alias_target_entry.uuid set from entity @s UUID
function pandamium:impl/dynamic_triggers/add_alias_target/reroll_uuid with storage pandamium:temp alias_target_entry
