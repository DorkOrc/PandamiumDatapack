execute unless dimension pandamium:staff_world run return fail
execute unless block ~ ~ ~ oak_wall_sign run return fail
execute unless block ~1 ~ ~ chest{components:{"minecraft:custom_data":{pandamium:{staff_world_chest:{}}}}} run return fail
execute store success score <double_chest> variable if block ~1 ~ ~ chest{components:{"minecraft:custom_data":{pandamium:{staff_world_chest:{chest_type:"double"}}}}}

execute if predicate pandamium:player/input/sneak run return run function pandamium:impl/take/sign_interact/bundle_items

execute if predicate pandamium:player/input/sprint run return run function pandamium:impl/take/sign_interact/remove_chest
