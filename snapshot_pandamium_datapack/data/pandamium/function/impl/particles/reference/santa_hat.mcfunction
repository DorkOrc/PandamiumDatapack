execute unless predicate pandamium:player/particles/moving positioned ~ ~-0.2 ~ anchored eyes run return run function pandamium:impl/particles/custom_trails/head/santa_hat
execute if score @s optn.trail_particles_when_stationary matches 1 positioned ~ ~-0.2 ~ anchored eyes run return run function pandamium:impl/particles/custom_trails/head/santa_hat

execute if predicate pandamium:periodic_tick/5t run particle minecraft:snowflake ~ ~0.5 ~ 0.2 0.2 0.2 0.05 1
