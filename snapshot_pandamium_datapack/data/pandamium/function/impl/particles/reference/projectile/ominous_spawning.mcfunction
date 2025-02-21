particle minecraft:ominous_spawning ^ ^ ^0.0 0.1 0.1 0.1 0 1 force
execute if score <disable_interpolated_projectile_trails> global matches 1 run return 0
execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{movement:{speed:{min:10}}}} run particle minecraft:ominous_spawning ^ ^ ^0.5 0.1 0.1 0.1 0 1 force
execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{movement:{speed:{min:20}}}} run particle minecraft:ominous_spawning ^ ^ ^1.0 0.1 0.1 0.1 0 1 force
execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{movement:{speed:{min:30}}}} run particle minecraft:ominous_spawning ^ ^ ^1.5 0.1 0.1 0.1 0 1 force
execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{movement:{speed:{min:40}}}} run particle minecraft:ominous_spawning ^ ^ ^2.0 0.1 0.1 0.1 0 1 force
execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{movement:{speed:{min:50}}}} run particle minecraft:ominous_spawning ^ ^ ^2.5 0.1 0.1 0.1 0 1 force
execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{movement:{speed:{min:60}}}} run particle minecraft:ominous_spawning ^ ^ ^3.0 0.1 0.1 0.1 0 1 force
