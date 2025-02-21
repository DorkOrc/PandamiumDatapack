execute if entity @s[tag=pandamium.monitoring_pickup,predicate=pandamium:has_passenger] run return fail

tag @s add pandamium.monitoring_pickup

tag @s add pandamium.custom_entity.type.item_entity_pickup_monitor.target
execute at @s summon marker run function pandamium:impl/custom_entities/custom_entity_types/item_entity_pickup_monitor/on_load
tag @s remove pandamium.custom_entity.type.item_entity_pickup_monitor.target
