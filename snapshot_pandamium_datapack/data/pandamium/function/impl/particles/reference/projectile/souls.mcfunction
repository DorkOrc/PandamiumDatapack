particle minecraft:soul ^ ^ ^0.0 0.25 0.25 0.25 0 1 force
execute if score <disable_interpolated_projectile_trails> global matches 1 run return 0
execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{movement:{speed:{min:20}}}} run particle minecraft:soul ^ ^ ^1 0.25 0.25 0.25 0 1 force
execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{movement:{speed:{min:40}}}} run particle minecraft:soul ^ ^ ^2 0.25 0.25 0.25 0 1 force
execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{movement:{speed:{min:60}}}} run particle minecraft:soul ^ ^ ^3 0.25 0.25 0.25 0 1 force
