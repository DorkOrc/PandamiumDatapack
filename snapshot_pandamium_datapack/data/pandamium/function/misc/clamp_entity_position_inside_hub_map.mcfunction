tp @s @s

execute at @s unless predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{location:{position:{x:{min:-512.0}}}}} run function pandamium:impl/clamp_entity_hitbox_along_axis/min_x {value:-512}
execute at @s unless predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{location:{position:{x:{max:512.0}}}}} run function pandamium:impl/clamp_entity_hitbox_along_axis/max_x {value:512}
execute at @s unless predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{location:{position:{z:{min:-512.0}}}}} run function pandamium:impl/clamp_entity_hitbox_along_axis/min_z {value:-512}
execute at @s unless predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{location:{position:{z:{max:512.0}}}}} run function pandamium:impl/clamp_entity_hitbox_along_axis/max_x {value:512}
