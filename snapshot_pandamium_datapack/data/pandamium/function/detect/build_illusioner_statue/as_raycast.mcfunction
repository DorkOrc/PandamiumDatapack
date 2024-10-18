function pandamium:utils/raycast/to_block

execute positioned as @s if block ~ ~ ~ carved_pumpkin if block ~ ~-1 ~ lapis_block if block ~ ~-2 ~ lapis_block align xyz positioned ~.5 ~-2 ~.5 run function pandamium:detect/build_illusioner_statue/at_statue_base

function pandamium:utils/kill_technical_entity_discretely
