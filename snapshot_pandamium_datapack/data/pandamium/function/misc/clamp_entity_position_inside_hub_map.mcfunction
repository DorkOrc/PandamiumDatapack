execute at @s unless predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{location:{position:{x:{min:-512.0}}}}} run tp @s -512.0 ~ ~
execute at @s unless predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{location:{position:{x:{max:512.0}}}}} run tp @s 512.0 ~ ~
execute at @s unless predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{location:{position:{z:{min:-512.0}}}}} run tp @s ~ ~ -512.0
execute at @s unless predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{location:{position:{z:{max:512.0}}}}} run tp @s ~ ~ 512.0
