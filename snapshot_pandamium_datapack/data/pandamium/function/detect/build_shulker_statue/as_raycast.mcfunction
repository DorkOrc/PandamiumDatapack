function pandamium:utils/raycast/to_block

execute positioned as @s if block ~ ~ ~ carved_pumpkin if block ~ ~-1 ~ #shulker_boxes if block ~ ~-2 ~ purpur_block unless items block ~ ~-1 ~ container.* * align xyz positioned ~.5 ~-2 ~.5 run function pandamium:detect/build_shulker_statue/at_statue_base

function pandamium:utils/kill_technical_entity_discretely
