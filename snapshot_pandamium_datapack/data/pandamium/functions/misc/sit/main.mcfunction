scoreboard players set <sat> variable 0
execute unless predicate pandamium:can_sit run function pandamium:misc/sit/reposition_if_on_stairs_edge
execute positioned as @s if predicate pandamium:can_sit store success score <sat> variable run function pandamium:misc/sit/do_sit
