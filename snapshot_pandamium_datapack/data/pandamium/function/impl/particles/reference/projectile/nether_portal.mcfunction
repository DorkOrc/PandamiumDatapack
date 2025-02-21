execute positioned ~ ~-0.75 ~ run particle minecraft:portal ^ ^ ^0.0 0.1 0.1 0.1 0 1 force
execute if score <disable_interpolated_projectile_trails> global matches 1 run return 0
execute positioned ~ ~-0.75 ~ if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{movement:{speed:{min:5}}}} run particle minecraft:portal ^ ^ ^0.25 0.1 0.1 0.1 0 1 force
execute positioned ~ ~-0.75 ~ if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{movement:{speed:{min:10}}}} run particle minecraft:portal ^ ^ ^0.5 0.1 0.1 0.1 0 1 force
execute positioned ~ ~-0.75 ~ if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{movement:{speed:{min:15}}}} run particle minecraft:portal ^ ^ ^0.75 0.1 0.1 0.1 0 1 force
execute positioned ~ ~-0.75 ~ if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{movement:{speed:{min:20}}}} run particle minecraft:portal ^ ^ ^1.0 0.1 0.1 0.1 0 1 force
execute positioned ~ ~-0.75 ~ if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{movement:{speed:{min:25}}}} run particle minecraft:portal ^ ^ ^1.25 0.1 0.1 0.1 0 1 force
execute positioned ~ ~-0.75 ~ if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{movement:{speed:{min:30}}}} run particle minecraft:portal ^ ^ ^1.5 0.1 0.1 0.1 0 1 force
execute positioned ~ ~-0.75 ~ if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{movement:{speed:{min:35}}}} run particle minecraft:portal ^ ^ ^1.75 0.1 0.1 0.1 0 1 force
execute positioned ~ ~-0.75 ~ if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{movement:{speed:{min:40}}}} run particle minecraft:portal ^ ^ ^2.0 0.1 0.1 0.1 0 1 force
execute positioned ~ ~-0.75 ~ if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{movement:{speed:{min:45}}}} run particle minecraft:portal ^ ^ ^2.25 0.1 0.1 0.1 0 1 force
execute positioned ~ ~-0.75 ~ if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{movement:{speed:{min:50}}}} run particle minecraft:portal ^ ^ ^2.5 0.1 0.1 0.1 0 1 force
execute positioned ~ ~-0.75 ~ if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{movement:{speed:{min:55}}}} run particle minecraft:portal ^ ^ ^2.75 0.1 0.1 0.1 0 1 force
execute positioned ~ ~-0.75 ~ if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{movement:{speed:{min:60}}}} run particle minecraft:portal ^ ^ ^3.0 0.1 0.1 0.1 0 1 force
