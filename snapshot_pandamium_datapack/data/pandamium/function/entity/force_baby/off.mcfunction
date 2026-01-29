execute unless predicate pandamium:entity/forced_baby run return fail

data modify entity @s Age set from entity @s data.forced_baby.age
data modify entity @s ForcedAge set from entity @s data.forced_baby.forced_age
execute store success entity @s AgeLocked byte 1 if data entity @s data.forced_baby{age_locked:true}
data remove entity @s data.forced_baby
