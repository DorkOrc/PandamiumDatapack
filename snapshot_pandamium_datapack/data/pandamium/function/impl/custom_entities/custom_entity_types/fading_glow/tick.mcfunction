execute if predicate pandamium:periodic_tick/on_load if block ~ ~ ~ air run return run setblock ~ ~ ~ light[level=15]
execute unless block ~ ~ ~ light run return run function pandamium:utils/kill_technical_entity_discretely

execute unless predicate pandamium:periodic_tick/1s run return fail
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

function pandamium:utils/kill_technical_entity_discretely
