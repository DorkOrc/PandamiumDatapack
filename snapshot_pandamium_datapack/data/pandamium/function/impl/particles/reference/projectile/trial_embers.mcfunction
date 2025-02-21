particle minecraft:trial_spawner_detection ^ ^ ^0.0 0.1 0.1 0.1 0 1 force
execute if score <disable_interpolated_projectile_trails> global matches 1 run return 0
execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{movement:{speed:{min:15}}}} run particle minecraft:trial_spawner_detection ^ ^ ^0.5 0.1 0.1 0.1 0 1 force
execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{movement:{speed:{min:30}}}} run particle minecraft:trial_spawner_detection ^ ^ ^1.0 0.1 0.1 0.1 0 1 force
execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{movement:{speed:{min:45}}}} run particle minecraft:trial_spawner_detection ^ ^ ^1.5 0.1 0.1 0.1 0 1 force
execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{movement:{speed:{min:60}}}} run particle minecraft:trial_spawner_detection ^ ^ ^2.0 0.1 0.1 0.1 0 1 force
