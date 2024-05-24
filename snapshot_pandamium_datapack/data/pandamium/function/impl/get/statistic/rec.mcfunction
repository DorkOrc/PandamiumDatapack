# arguments: lower, mean, type, stat

# adjust bounds
$execute store success score <in_lower_half> variable if predicate {condition: "minecraft:entity_properties", entity: "this", predicate: {type_specific: {type: "minecraft:player", stats: [{type: "$(type)", stat: "$(stat)", value: {min: $(lower_bound), max: $(mean)}}]}}}
execute if score <in_lower_half> variable matches 1 run scoreboard players operation <upper_bound> variable = <mean> variable
execute if score <in_lower_half> variable matches 0 run scoreboard players operation <lower_bound> variable = <mean> variable
execute if score <in_lower_half> variable matches 0 store result storage pandamium:local "impl/get/statistic/".lower_bound int 1 run scoreboard players add <lower_bound> variable 1

# calculate new mean
scoreboard players operation <mean> variable = <lower_bound> variable
scoreboard players operation <mean> variable += <upper_bound> variable
execute store result storage pandamium:local "utils/get/statistic".mean int 1 run scoreboard players operation <mean> variable /= #2 constant

# recurse if range is not 0
execute unless score <lower_bound> variable = <upper_bound> variable run function pandamium:impl/get/statistic/rec with storage pandamium:local "utils/get/statistic"
