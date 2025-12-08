execute unless entity @s[predicate=pandamium:in_legacy_spawn_area] run return fail

execute in minecraft:overworld positioned 0.0 0.0 0.0 facing entity @s feet rotated ~45 ~ positioned ^ ^ ^1 if predicate {condition:"minecraft:location_check",predicate:{position:{x:{min:0},z:{min:0}}}} positioned as @s run tp @s 512.0 ~ ~
execute in minecraft:overworld positioned 0.0 0.0 0.0 facing entity @s feet rotated ~45 ~ positioned ^ ^ ^1 if predicate {condition:"minecraft:location_check",predicate:{position:{x:{max:0},z:{min:0}}}} positioned as @s run tp @s ~ ~ 512.0
execute in minecraft:overworld positioned 0.0 0.0 0.0 facing entity @s feet rotated ~45 ~ positioned ^ ^ ^1 if predicate {condition:"minecraft:location_check",predicate:{position:{x:{max:0},z:{max:0}}}} positioned as @s run tp @s -512.0 ~ ~
execute in minecraft:overworld positioned 0.0 0.0 0.0 facing entity @s feet rotated ~45 ~ positioned ^ ^ ^1 if predicate {condition:"minecraft:location_check",predicate:{position:{x:{min:0},z:{max:0}}}} positioned as @s run tp @s ~ ~ -512.0
