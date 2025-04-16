execute unless predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{predicates:{"minecraft:custom_data":{enforced_sit:1b}}}} run function pandamium:impl/custom_entities/custom_entity_types/seat/enforce_sit

execute on vehicle on passengers if entity @s[type=minecraft:player] \
    unless predicate pandamium:player/input/any_movement_inputs \
    unless block ~ ~-0.001 ~ #pandamium:cannot_sit_on \
    if block ~ ~ ~ #pandamium:mobs_cannot_suffocate_in \
    unless block ~ ~ ~ #pandamium:cannot_sit_inside \
    if block ~ ~1 ~ #pandamium:mobs_cannot_suffocate_in \
    unless block ~ ~1 ~ #pandamium:cannot_sit_inside \
    if block ~ ~1.2 ~ #pandamium:mobs_cannot_suffocate_in \
    unless block ~ ~1.2 ~ #pandamium:cannot_sit_inside \
        run return 0

execute on vehicle on passengers run ride @s[type=minecraft:player] dismount
function pandamium:impl/custom_entities/custom_entity_types/seat/fix_dismount_location

execute on vehicle run function pandamium:utils/kill_entity_stack_discretely
