execute if predicate pandamium:entity/forced_baby run return fail
execute unless predicate pandamium:entity/is_baby run return fail
execute unless data entity @s Age run return fail

data modify entity @s data.forced_baby set value {}
data modify entity @s data.forced_baby.age set from entity @s Age
data modify entity @s data.forced_baby.forced_age set from entity @s ForcedAge
data merge entity @s {Age:-2147483648,ForcedAge:0}
