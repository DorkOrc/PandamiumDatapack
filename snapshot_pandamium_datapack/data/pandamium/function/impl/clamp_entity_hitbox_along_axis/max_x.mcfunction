# arguments: value

$execute at @s unless predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{location:{position:{x:{max:$(value)}}}}} positioned 0.0 ~ ~ run tp @s ~$(value) ~ ~
$execute at @s positioned 0.0 ~ ~ positioned ~$(value) ~ ~ positioned ~ ~ ~-0.001 if entity @s[dx=0] positioned as @s run tp @s ~-0.0625 ~ ~
$execute at @s positioned 0.0 ~ ~ positioned ~$(value) ~ ~ positioned ~ ~ ~-0.001 if entity @s[dx=0] run function pandamium:impl/clamp_entity_hitbox_along_axis/max_x {value:$(value)}
