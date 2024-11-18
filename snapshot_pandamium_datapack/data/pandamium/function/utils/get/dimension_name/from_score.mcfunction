# input: score <dimension> variable

execute if score <dimension> variable matches 0 run data modify storage pandamium:temp dimension_name set from storage pandamium:dictionary dimension.overworld.name
execute if score <dimension> variable matches -1 run data modify storage pandamium:temp dimension_name set from storage pandamium:dictionary dimension.the_nether.name
execute if score <dimension> variable matches 1 run data modify storage pandamium:temp dimension_name set from storage pandamium:dictionary dimension.the_end.name
execute if score <dimension> variable matches 2 run data modify storage pandamium:temp dimension_name set from storage pandamium:dictionary dimension.staff_world.name
