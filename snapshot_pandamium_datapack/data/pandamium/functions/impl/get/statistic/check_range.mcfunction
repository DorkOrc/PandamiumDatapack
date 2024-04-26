# arguments: lower, middle, type, stat

# lower
$execute if predicate {condition: "minecraft:entity_properties", entity: "this", predicate: {type_specific: {type: "minecraft:player", stats: [{type: "$(type)", stat: "$(stat)", value: {min: $(lower), max: $(middle)}}]}}} run return run scoreboard players operation <upper> variable = <middle> variable

# else, upper
scoreboard players operation <lower> variable = <middle> variable
execute store result storage pandamium:local "impl/get/statistic/".lower int 1 run scoreboard players add <lower> variable 1
