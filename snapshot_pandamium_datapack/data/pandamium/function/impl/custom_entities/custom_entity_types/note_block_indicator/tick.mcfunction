# arguments: (custom_entity_type)

execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{periodic_tick:999999}} run return run function pandamium:impl/custom_entities/custom_entity_types/note_block_indicator/first_tick

execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{periodic_tick:200}} run return run function pandamium:utils/kill_entity_stack_discretely
execute unless block ~ ~ ~ note_block run return run function pandamium:utils/kill_entity_stack_discretely
