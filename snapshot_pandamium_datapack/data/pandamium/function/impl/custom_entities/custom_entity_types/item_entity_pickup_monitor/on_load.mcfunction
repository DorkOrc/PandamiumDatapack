tag @s add pandamium.custom_entity.brain
tag @s add pandamium.custom_entity.type.item_entity_pickup_monitor
tag @s add pandamium.ticking

data modify entity @s data.custom_entity_type set value "item_entity_pickup_monitor"

ride @s mount @n[type=item,tag=pandamium.custom_entity.type.item_entity_pickup_monitor.target,distance=..0.001]
