function pandamium:utils/raycast/to_block

execute positioned as @s if block ~ ~ ~ note_block align xyz positioned ~.5 ~.5 ~.5 run function pandamium:impl/custom_entities/custom_entity_types/note_block_indicator/summon

function pandamium:utils/kill_technical_entity_discretely
