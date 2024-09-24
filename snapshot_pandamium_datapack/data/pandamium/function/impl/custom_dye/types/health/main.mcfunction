execute store result score <max_health> variable run attribute @s minecraft:max_health get

scoreboard players operation <ratio> variable = @s custom_dye.health
execute if score <ratio> variable > <max_health> variable run scoreboard players operation <ratio> variable = <max_health> variable
scoreboard players operation <ratio> variable *= #510 constant
scoreboard players operation <ratio> variable /= <max_health> variable

execute if score <ratio> variable matches 0..255 run scoreboard players operation <rgb> variable = <ratio> variable
execute if score <ratio> variable matches 0..255 run scoreboard players operation <rgb> variable *= #256 constant
execute if score <ratio> variable matches 0..255 store result storage pandamium:local functions."pandamium:impl/custom_dye/types/health/main".boots_color int 1 store result storage pandamium:local functions."pandamium:impl/custom_dye/types/health/main".leggings_color int 1 store result storage pandamium:local functions."pandamium:impl/custom_dye/types/health/main".chestplate_color int 1 store result storage pandamium:local functions."pandamium:impl/custom_dye/types/health/main".helmet_color int 1 run scoreboard players add <rgb> variable 16711680

execute if score <ratio> variable matches 256..510 run scoreboard players set <rgb> variable 255
execute if score <ratio> variable matches 256..510 run scoreboard players operation <rgb> variable -= <ratio> variable
execute if score <ratio> variable matches 256..510 run scoreboard players operation <rgb> variable *= #65536 constant
execute if score <ratio> variable matches 256..510 store result storage pandamium:local functions."pandamium:impl/custom_dye/types/health/main".boots_color int 1 store result storage pandamium:local functions."pandamium:impl/custom_dye/types/health/main".leggings_color int 1 store result storage pandamium:local functions."pandamium:impl/custom_dye/types/health/main".chestplate_color int 1 store result storage pandamium:local functions."pandamium:impl/custom_dye/types/health/main".helmet_color int 1 run scoreboard players add <rgb> variable 65280

execute if score <40_tick_loop> global matches 0..2 if predicate pandamium:has_effect/regeneration run data modify storage pandamium:local functions."pandamium:impl/custom_dye/types/health/main".boots_color set value 13458603
execute if score <40_tick_loop> global matches 2..4 if predicate pandamium:has_effect/regeneration run data modify storage pandamium:local functions."pandamium:impl/custom_dye/types/health/main".leggings_color set value 13458603
execute if score <40_tick_loop> global matches 4..6 if predicate pandamium:has_effect/regeneration run data modify storage pandamium:local functions."pandamium:impl/custom_dye/types/health/main".chestplate_color set value 13458603
execute if score <40_tick_loop> global matches 6..8 if predicate pandamium:has_effect/regeneration run data modify storage pandamium:local functions."pandamium:impl/custom_dye/types/health/main".helmet_color set value 13458603

execute if score <40_tick_loop> global matches 9..11 if predicate pandamium:has_effect/resistance unless predicate pandamium:has_effect/fire_resistance run data modify storage pandamium:local functions."pandamium:impl/custom_dye/types/health/main".boots_color set value 9520880
execute if score <40_tick_loop> global matches 11..13 if predicate pandamium:has_effect/resistance unless predicate pandamium:has_effect/fire_resistance run data modify storage pandamium:local functions."pandamium:impl/custom_dye/types/health/main".leggings_color set value 9520880
execute if score <40_tick_loop> global matches 13..15 if predicate pandamium:has_effect/resistance unless predicate pandamium:has_effect/fire_resistance run data modify storage pandamium:local functions."pandamium:impl/custom_dye/types/health/main".chestplate_color set value 9520880
execute if score <40_tick_loop> global matches 15..17 if predicate pandamium:has_effect/resistance unless predicate pandamium:has_effect/fire_resistance run data modify storage pandamium:local functions."pandamium:impl/custom_dye/types/health/main".helmet_color set value 9520880

execute if score <40_tick_loop> global matches 9..11 if predicate pandamium:has_effect/fire_resistance run data modify storage pandamium:local functions."pandamium:impl/custom_dye/types/health/main".boots_color set value 16750848
execute if score <40_tick_loop> global matches 11..13 if predicate pandamium:has_effect/fire_resistance run data modify storage pandamium:local functions."pandamium:impl/custom_dye/types/health/main".leggings_color set value 16750848
execute if score <40_tick_loop> global matches 13..15 if predicate pandamium:has_effect/fire_resistance run data modify storage pandamium:local functions."pandamium:impl/custom_dye/types/health/main".chestplate_color set value 16750848
execute if score <40_tick_loop> global matches 15..17 if predicate pandamium:has_effect/fire_resistance run data modify storage pandamium:local functions."pandamium:impl/custom_dye/types/health/main".helmet_color set value 16750848

execute if score <40_tick_loop> global matches 20..22 if predicate pandamium:has_effect/wither run data modify storage pandamium:local functions."pandamium:impl/custom_dye/types/health/main".helmet_color set value 7561558
execute if score <40_tick_loop> global matches 22..24 if predicate pandamium:has_effect/wither run data modify storage pandamium:local functions."pandamium:impl/custom_dye/types/health/main".chestplate_color set value 7561558
execute if score <40_tick_loop> global matches 24..26 if predicate pandamium:has_effect/wither run data modify storage pandamium:local functions."pandamium:impl/custom_dye/types/health/main".leggings_color set value 7561558
execute if score <40_tick_loop> global matches 26..28 if predicate pandamium:has_effect/wither run data modify storage pandamium:local functions."pandamium:impl/custom_dye/types/health/main".boots_color set value 7561558

execute if score <40_tick_loop> global matches 29..31 if predicate pandamium:has_effect/poison run data modify storage pandamium:local functions."pandamium:impl/custom_dye/types/health/main".helmet_color set value 8889187
execute if score <40_tick_loop> global matches 31..33 if predicate pandamium:has_effect/poison run data modify storage pandamium:local functions."pandamium:impl/custom_dye/types/health/main".chestplate_color set value 8889187
execute if score <40_tick_loop> global matches 33..35 if predicate pandamium:has_effect/poison run data modify storage pandamium:local functions."pandamium:impl/custom_dye/types/health/main".leggings_color set value 8889187
execute if score <40_tick_loop> global matches 35..37 if predicate pandamium:has_effect/poison run data modify storage pandamium:local functions."pandamium:impl/custom_dye/types/health/main".boots_color set value 8889187

function pandamium:impl/custom_dye/types/health/modify with storage pandamium:local functions."pandamium:impl/custom_dye/types/health/main"
