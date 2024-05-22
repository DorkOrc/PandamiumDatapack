scoreboard players set <sat> variable 0
execute unless predicate pandamium:can_sit run function pandamium:impl/sit/reposition_if_on_stairs_edge/main
execute positioned as @s if predicate pandamium:can_sit positioned ~ ~-0.01 ~ if block ~ ~ ~ #stairs[half=bottom] if block ~ ~1 ~ #pandamium:no_solid_collision if block ~ ~2 ~ #pandamium:no_solid_collision run function pandamium:impl/sit/reposition_on_stairs
execute positioned as @s if predicate pandamium:can_sit store success score <sat> variable run function pandamium:impl/sit/do_sit
