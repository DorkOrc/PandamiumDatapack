tag @s add pandamium.custom_name_processed

execute unless predicate pandamium:entity/has_custom_name run return run data remove entity @s data.custom_name_copy

execute if predicate pandamium:entity/edit_entity_custom_name run data modify entity @s CustomName set value {text:"#",extra:[""]}
data modify entity @s data.custom_name_copy set value {}
data modify entity @s data.custom_name_copy.name set from entity @s CustomName
