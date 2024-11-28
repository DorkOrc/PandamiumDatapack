# find stair from edge
execute unless block ~ ~-0.001 ~ #minecraft:stairs[half=bottom] run return run function pandamium:impl/sit/check_stairs/find_block

# check space in front of stair
execute if block ~ ~-0.001 ~ #stairs[half=bottom,facing=north] align xyz positioned ~0.5 ~-0.5 ~0.8 positioned ~ ~ ~1 if predicate pandamium:sitting/can_sit_in_front_of positioned ~ ~ ~-1 run return run function pandamium:impl/sit/do_sit
execute if block ~ ~-0.001 ~ #stairs[half=bottom,facing=east] align xyz positioned ~0.2 ~-0.5 ~0.5 positioned ~-1 ~ ~ if predicate pandamium:sitting/can_sit_in_front_of positioned ~1 ~ ~ run return run function pandamium:impl/sit/do_sit
execute if block ~ ~-0.001 ~ #stairs[half=bottom,facing=south] align xyz positioned ~0.5 ~-0.5 ~0.2 positioned ~ ~ ~-1 if predicate pandamium:sitting/can_sit_in_front_of positioned ~ ~ ~1 run return run function pandamium:impl/sit/do_sit
execute if block ~ ~-0.001 ~ #stairs[half=bottom,facing=west] align xyz positioned ~0.8 ~-0.5 ~0.5 positioned ~1 ~ ~ if predicate pandamium:sitting/can_sit_in_front_of positioned ~-1 ~ ~ run return run function pandamium:impl/sit/do_sit

# fail
return 0
