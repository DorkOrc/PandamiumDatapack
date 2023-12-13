execute if score <dimension> variable matches 0 run return run data modify storage pandamium:temp dimension_string_id set value "minecraft:overworld"
execute if score <dimension> variable matches -1 run return run data modify storage pandamium:temp dimension_string_id set value "minecraft:the_nether"
execute if score <dimension> variable matches 1 run return run data modify storage pandamium:temp dimension_string_id set value "minecraft:the_end"
execute if score <dimension> variable matches 2 run return run data modify storage pandamium:temp dimension_string_id set value "pandamium:staff_world"
