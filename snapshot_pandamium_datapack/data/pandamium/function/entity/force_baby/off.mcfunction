execute unless predicate pandamium:entity/forced_baby run return fail

data modify entity @s Age set from entity @s data.forced_baby.age
data modify entity @s ForcedAge set from entity @s data.forced_baby.forced_age
data remove entity @s data.forced_baby
