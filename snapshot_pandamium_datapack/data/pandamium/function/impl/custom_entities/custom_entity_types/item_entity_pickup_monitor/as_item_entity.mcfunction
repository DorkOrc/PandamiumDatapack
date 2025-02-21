# if there are no hidden players nearby, revert Owner and stop tracking this entity
execute unless entity @a[distance=..10,predicate=pandamium:player/is_hidden,limit=1] run return run function pandamium:impl/custom_entities/custom_entity_types/item_entity_pickup_monitor/untrack_item_entity

# if there is at least one non-hidden player nearby, set Owner to the nearest one's UUID
execute if entity @a[distance=..10,predicate=!pandamium:player/is_hidden,limit=1] run return run function pandamium:impl/custom_entities/custom_entity_types/item_entity_pickup_monitor/set_item_entity_owner

# otherwise, set Owner to a non-player UUID so that it cannot be picked up
data modify entity @s Owner set value [I;0,0,0,0]
