scoreboard players set <repositioned> variable 0

execute if score <repositioned> variable matches 0 positioned ~-0.3 ~-0.01 ~ run function pandamium:impl/sit/reposition_if_on_stairs_edge/run_relative_relative
execute if score <repositioned> variable matches 0 positioned ~ ~-0.01 ~-0.3 run function pandamium:impl/sit/reposition_if_on_stairs_edge/run_relative
execute if score <repositioned> variable matches 0 positioned ~ ~-0.01 ~0.3 run function pandamium:impl/sit/reposition_if_on_stairs_edge/run_relative
execute if score <repositioned> variable matches 0 positioned ~0.3 ~-0.01 ~ run function pandamium:impl/sit/reposition_if_on_stairs_edge/run_relative

execute if score <repositioned> variable matches 0 positioned ~-0.3 ~-0.01 ~-0.3 run function pandamium:impl/sit/reposition_if_on_stairs_edge/run_relative
execute if score <repositioned> variable matches 0 positioned ~-0.3 ~-0.01 ~0.3 run function pandamium:impl/sit/reposition_if_on_stairs_edge/run_relative
execute if score <repositioned> variable matches 0 positioned ~0.3 ~-0.01 ~-0.3 run function pandamium:impl/sit/reposition_if_on_stairs_edge/run_relative
execute if score <repositioned> variable matches 0 positioned ~0.3 ~-0.01 ~0.3 run function pandamium:impl/sit/reposition_if_on_stairs_edge/run_relative
