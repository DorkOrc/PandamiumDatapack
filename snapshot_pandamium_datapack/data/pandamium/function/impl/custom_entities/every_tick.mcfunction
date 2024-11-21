execute if entity @s[type=marker,tag=pandamium.custom_entity.brain] run data modify storage pandamium:local functions."pandamium:impl/custom_entities/*".brain_data set from entity @s data
execute if entity @s[type=marker,tag=pandamium.custom_entity.brain] run return run function pandamium:impl/custom_entities/as_brain with storage pandamium:local functions."pandamium:impl/custom_entities/*".brain_data

# handle legacy format
execute if entity @s[type=item_display,tag=pandamium.flying_eyeball.root] run function pandamium:impl/flying_eyeball/every_tick
