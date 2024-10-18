function pandamium:utils/raycast/to_block

execute positioned as @s if block ~ ~ ~ carved_pumpkin if block ~ ~-1 ~ creaking_heart[axis=y] if block ~ ~-2 ~ #pale_oak_logs[axis=y] align xyz positioned ~.5 ~-2 ~.5 run function pandamium:detect/build_creaking_statue/at_statue_base
execute positioned as @s if block ~ ~1 ~ carved_pumpkin if block ~ ~ ~ creaking_heart[axis=y] if block ~ ~-1 ~ #pale_oak_logs[axis=y] align xyz positioned ~.5 ~-1 ~.5 run function pandamium:detect/build_creaking_statue/at_statue_base

function pandamium:utils/kill_technical_entity_discretely
