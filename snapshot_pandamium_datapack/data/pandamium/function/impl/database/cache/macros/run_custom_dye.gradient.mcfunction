scoreboard players operation <frame> variable = <current_gametime> global
scoreboard players operation <frame> variable %= #48 constant
execute store result storage pandamium:cache macros."custom_dye.gradient".current_frame int 1 run scoreboard players operation <frame> variable /= #2 constant

execute if score <frame> variable matches 0..7 run return run function pandamium:impl/database/cache/macros/custom_dye.gradient/0..7 with storage pandamium:cache macros."custom_dye.gradient"
execute if score <frame> variable matches 8..15 run return run function pandamium:impl/database/cache/macros/custom_dye.gradient/8..15 with storage pandamium:cache macros."custom_dye.gradient"
execute if score <frame> variable matches 16..23 run return run function pandamium:impl/database/cache/macros/custom_dye.gradient/16..23 with storage pandamium:cache macros."custom_dye.gradient"
