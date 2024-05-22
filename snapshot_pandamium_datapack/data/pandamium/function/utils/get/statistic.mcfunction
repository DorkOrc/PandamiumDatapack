# arguments: type, stat

# check if inputs are valid (and quick return if 0)
$execute if predicate {condition: "minecraft:entity_properties", entity: "this", predicate: {type_specific: {type: "minecraft:player", stats: [{type: "$(type)", stat: "$(stat)", value: 0}]}}} run return 0
$data modify storage pandamium:local "utils/get/statistic" set value {type:"$(type)",stat:"$(stat)"}

# set starting conditions
execute store result storage pandamium:local "utils/get/statistic".lower_bound int 1 run scoreboard players set <lower_bound> variable -2147483648
scoreboard players set <upper_bound> variable 2147483647
execute store result storage pandamium:local "utils/get/statistic".mean int 1 run scoreboard players set <mean> variable -1

# binary search
function pandamium:impl/get/statistic/rec with storage pandamium:local "utils/get/statistic"

# return value
return run scoreboard players get <lower_bound> variable
