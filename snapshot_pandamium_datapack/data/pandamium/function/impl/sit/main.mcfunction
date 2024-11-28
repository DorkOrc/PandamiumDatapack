execute unless predicate pandamium:sitting/can_sit run return run execute if predicate pandamium:stepping_on_sittable_stairs run function pandamium:impl/sit/check_stairs/main

execute if predicate pandamium:sitting/stepping_on_sittable_stairs if function pandamium:impl/sit/check_stairs/main run return 1

return run function pandamium:impl/sit/do_sit
