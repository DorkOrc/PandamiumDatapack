execute unless predicate pandamium:entity/has_custom_name_copy run return run data remove entity @s CustomName
data modify entity @s CustomName set from entity @s data.custom_name_copy.name
