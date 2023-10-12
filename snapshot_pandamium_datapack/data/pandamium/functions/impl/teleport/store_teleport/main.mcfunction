# Check Distance
function pandamium:utils/get/position
execute store result storage pandamium:templates teleport.to[0] int 1 run scoreboard players operation <dx> variable = <x> variable
execute store result storage pandamium:templates teleport.to[1] int 1 run scoreboard players operation <dy> variable = <y> variable
execute store result storage pandamium:templates teleport.to[2] int 1 run scoreboard players operation <dz> variable = <z> variable
execute store result storage pandamium:templates teleport.to[3] int 1 store result score <to_dimension> variable run function pandamium:utils/get/dimension_id

execute at @s run function pandamium:utils/get/position
execute at @s store result storage pandamium:templates teleport.from[3] int 1 store result score <from_dimension> variable run function pandamium:utils/get/dimension_id

scoreboard players operation <dx> variable -= <x> variable
scoreboard players operation <dy> variable -= <y> variable
scoreboard players operation <dz> variable -= <z> variable
function pandamium:utils/get/distance/from_scores
execute if score <to_dimension> variable = <from_dimension> variable if score <distance> variable matches ..10 run return 0

# Continue
execute store result storage pandamium:templates teleport.from[0] int 1 run scoreboard players get <x> variable
execute store result storage pandamium:templates teleport.from[1] int 1 run scoreboard players get <y> variable
execute store result storage pandamium:templates teleport.from[2] int 1 run scoreboard players get <z> variable

execute if data storage pandamium:templates teleport{source:"die"} run function pandamium:impl/teleport/store_teleport/store_spawnpoint

tellraw @a[scores={send_extra_debug_info=2..}] [{"text":"[Server: Teleported ","color":"gray","italic":true,"hoverEvent":{"action":"show_text","contents":{"storage":"pandamium:templates","nbt":"teleport"}}},{"selector":"@s"}," ",{"score":{"name":"<distance>","objective":"variable"}},"m by [",{"storage":"pandamium:templates","nbt":"teleport.source"},"]]"]
