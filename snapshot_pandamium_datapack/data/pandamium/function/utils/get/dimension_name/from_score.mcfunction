# input: score <dimension> variable

execute if score <dimension> variable matches 0 run data modify storage pandamium:temp dimension_name set from storage pandamium:dictionary dimension."minecraft:overworld".name
execute if score <dimension> variable matches -1 run data modify storage pandamium:temp dimension_name set from storage pandamium:dictionary dimension."minecraft:the_nether".name
execute if score <dimension> variable matches 1 run data modify storage pandamium:temp dimension_name set from storage pandamium:dictionary dimension."minecraft:the_end".name
execute if score <dimension> variable matches 2 run data modify storage pandamium:temp dimension_name set from storage pandamium:dictionary dimension."pandamium:staff_world".name
execute if score <dimension> variable matches 3 run data modify storage pandamium:temp dimension_name set from storage pandamium:dictionary dimension."pandamium:sandbox".name
execute if score <dimension> variable matches 4 run data modify storage pandamium:temp dimension_name set from storage pandamium:dictionary dimension."pandamium:hub".name
