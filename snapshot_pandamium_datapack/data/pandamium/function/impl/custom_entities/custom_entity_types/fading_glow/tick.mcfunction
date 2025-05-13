# on initial load (may repeat if in a non-simulating chunk), only update initial air block
execute if predicate pandamium:periodic_tick/on_load run return run execute if block ~ ~ ~ air run setblock ~ ~ ~ light[level=15]

# only update once per second and only if in a fully loaded (may not be simulating) chunk
execute unless loaded ~ ~ ~ run return 1
execute unless predicate pandamium:periodic_tick/1s run return 1

# update light block level
execute unless block ~ ~ ~ light run return run function pandamium:impl/custom_entities/custom_entity_types/fading_glow/die
execute if block ~ ~ ~ light[level=0] run return run function pandamium:impl/custom_entities/custom_entity_types/fading_glow/die
execute if block ~ ~ ~ light[level=1] run return run setblock ~ ~ ~ light[level=0] strict
execute if block ~ ~ ~ light[level=2] run return run setblock ~ ~ ~ light[level=1] strict
execute if block ~ ~ ~ light[level=3] run return run setblock ~ ~ ~ light[level=2] strict
execute if block ~ ~ ~ light[level=4] run return run setblock ~ ~ ~ light[level=3] strict
execute if block ~ ~ ~ light[level=5] run return run setblock ~ ~ ~ light[level=4] strict
execute if block ~ ~ ~ light[level=6] run return run setblock ~ ~ ~ light[level=5] strict
execute if block ~ ~ ~ light[level=7] run return run setblock ~ ~ ~ light[level=6] strict
execute if block ~ ~ ~ light[level=8] run return run setblock ~ ~ ~ light[level=7] strict
execute if block ~ ~ ~ light[level=9] run return run setblock ~ ~ ~ light[level=8] strict
execute if block ~ ~ ~ light[level=10] run return run setblock ~ ~ ~ light[level=9] strict
execute if block ~ ~ ~ light[level=11] run return run setblock ~ ~ ~ light[level=10] strict
execute if block ~ ~ ~ light[level=12] run return run setblock ~ ~ ~ light[level=11] strict
execute if block ~ ~ ~ light[level=13] run return run setblock ~ ~ ~ light[level=12] strict
execute if block ~ ~ ~ light[level=14] run return run setblock ~ ~ ~ light[level=13] strict
execute if block ~ ~ ~ light[level=15] run return run setblock ~ ~ ~ light[level=14] strict

# kill in case of an uncaught case
function pandamium:impl/custom_entities/custom_entity_types/fading_glow/die
