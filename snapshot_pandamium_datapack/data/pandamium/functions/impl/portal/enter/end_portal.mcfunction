execute store success score <in_the_end> variable if predicate pandamium:in_dimension/the_end
execute if score <in_the_end> variable matches 1 run function pandamium:impl/teleport/warp/spawn
execute if score <in_the_end> variable matches 0 run function pandamium:impl/teleport/warp/end_platform
