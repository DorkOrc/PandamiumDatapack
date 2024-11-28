execute unless predicate pandamium:sitting/can_sit run return run execute if predicate pandamium:sitting/stepping_on_sittable_stairs run function pandamium:impl/sit/check_stairs/main

execute if predicate pandamium:sitting/stepping_on_sittable_stairs if function pandamium:impl/sit/check_stairs/main run return 1

execute \
    unless predicate pandamium:player/input/any_movement_inputs \
    unless block ~ ~-0.001 ~ #pandamium:cannot_sit_on \
    if block ~ ~ ~ #pandamium:mobs_cannot_suffocate_in \
    unless block ~ ~ ~ #pandamium:cannot_sit_inside \
    if block ~ ~1 ~ #pandamium:mobs_cannot_suffocate_in \
    unless block ~ ~1 ~ #pandamium:cannot_sit_inside \
    if block ~ ~1.2 ~ #pandamium:mobs_cannot_suffocate_in \
    unless block ~ ~1.2 ~ #pandamium:cannot_sit_inside \
        run return run function pandamium:impl/sit/do_sit

return 0
