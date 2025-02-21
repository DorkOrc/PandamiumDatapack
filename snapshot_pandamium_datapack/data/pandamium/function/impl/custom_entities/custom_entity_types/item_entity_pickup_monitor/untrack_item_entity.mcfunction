tag @s remove pandamium.monitoring_pickup
data remove entity @s Owner

execute on passengers if entity @s[type=marker,tag=pandamium.custom_entity.brain,tag=pandamium.custom_entity.type.item_entity_pickup_monitor] run function pandamium:utils/kill_technical_entity_discretely
