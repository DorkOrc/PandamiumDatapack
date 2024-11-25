# check if this is from the "die" source
execute store success score <from_death> variable if data storage pandamium:templates teleport{source:"die"}

# fail if player is already nearby
execute if score <from_death> variable matches 0 if entity @s[distance=..10] run return run data remove storage pandamium:templates teleport.source

# get destination
execute if score <from_death> variable matches 1 run function pandamium:impl/teleport/store_teleport/store_spawnpoint
execute if score <from_death> variable matches 0 run function pandamium:impl/teleport/store_teleport/store_destination

# get starting location
execute at @s run function pandamium:utils/get/position
execute store result storage pandamium:templates teleport.from[0] int 1 run scoreboard players get <x> variable
execute store result storage pandamium:templates teleport.from[1] int 1 run scoreboard players get <y> variable
execute store result storage pandamium:templates teleport.from[2] int 1 run scoreboard players get <z> variable
execute at @s store result storage pandamium:templates teleport.from[3] int 1 run function pandamium:utils/get/dimension_id

# feedback
execute if score <feedback_teleports> global matches 1 run tellraw @a[scores={send_extra_debug_info=2..}] [{"text":"[Pandamium: Teleported ","color":"gray","italic":true,"hoverEvent":{"action":"show_text","contents":{"storage":"pandamium:templates","nbt":"teleport"}}},{"selector":"@s"}," by [",{"storage":"pandamium:templates","nbt":"teleport.source"},"]]"]

# store in teleport history
execute store result storage pandamium:templates macro.index.index int 1 run scoreboard players get @s db.players.index
function pandamium:impl/teleport/store_teleport/modify_entry with storage pandamium:templates macro.index

# remove source type
data remove storage pandamium:templates teleport.source
