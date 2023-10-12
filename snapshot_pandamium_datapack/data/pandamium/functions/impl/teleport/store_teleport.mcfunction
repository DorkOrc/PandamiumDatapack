data modify storage pandamium:templates teleport.source set from storage pandamium:temp source

function pandamium:utils/get/position
execute store result storage pandamium:templates teleport.to[0] int 1 run scoreboard players operation <dx> variable = <x> variable
execute store result storage pandamium:templates teleport.to[1] int 1 run scoreboard players operation <dy> variable = <y> variable
execute store result storage pandamium:templates teleport.to[2] int 1 run scoreboard players operation <dz> variable = <z> variable

execute at @s run function pandamium:utils/get/position
scoreboard players operation <dx> variable -= <x> variable
scoreboard players operation <dy> variable -= <y> variable
scoreboard players operation <dz> variable -= <z> variable
function pandamium:utils/get/distance/from_scores

# do not store if teleport was closeby
execute if score <distance> variable matches ..10 run return 0

# continue
execute store result storage pandamium:templates teleport.to[3] int 1 run function pandamium:utils/get/dimension_id

execute store result storage pandamium:templates teleport.from[0] int 1 run scoreboard players get <x> variable
execute store result storage pandamium:templates teleport.from[1] int 1 run scoreboard players get <y> variable
execute store result storage pandamium:templates teleport.from[2] int 1 run scoreboard players get <z> variable
execute store result storage pandamium:templates teleport.from[3] int 1 at @s run function pandamium:utils/get/dimension_id

tellraw @a[scores={send_extra_debug_info=2..}] [{"text":"[Server: Teleported ","color":"gray","italic":true},{"selector":"@s"}," ",{"score":{"name":"<distance>","objective":"variable"}},"m by [",{"storage":"pandamium:templates","nbt":"teleport.source"},"]]"]
