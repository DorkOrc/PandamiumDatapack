advancement revoke @s only pandamium:detect/use_pale_garden_compass

# checks
execute if predicate pandamium:in_spawn run return run title @s actionbar {text:"Cannot be used at spawn",color:"red"}
execute unless dimension minecraft:overworld run return run title @s actionbar {text:"Cannot be used in this dimension",color:"red"}
execute if biome ~ ~ ~ minecraft:pale_garden run return run title @s actionbar {text:"You are already in a Pale Garden",color:"red"}
execute unless items entity @s weapon.* compass[custom_data~{pandamium:{id:"pale_garden_compass"}}] run return 0

execute store success score <mainhand> variable if items entity @s weapon.mainhand compass[custom_data~{pandamium:{id:"pale_garden_compass"}}]

execute if score <mainhand> variable matches 1 in pandamium:staff_world run item replace block 5 0 0 contents from entity @s weapon.mainhand
execute if score <mainhand> variable matches 0 in pandamium:staff_world run item replace block 5 0 0 contents from entity @s weapon.offhand

execute store result score <used_timestamp> variable in pandamium:staff_world run data get block 5 0 0 item.components.minecraft:custom_data.pandamium.used_timestamp
scoreboard players set <time_remaining> variable 12000
scoreboard players operation <time_remaining> variable += <used_timestamp> variable
execute store result score <ticks> variable run scoreboard players operation <time_remaining> variable -= <current_gametime> global
execute if score <time_remaining> variable matches 11980..12000 run return 0
execute if score <ticks> variable matches 1800.. run scoreboard players add <ticks> variable 600
execute if score <time_remaining> variable matches 40.. run function pandamium:utils/get/time_from_ticks_without_hours
execute if score <time_remaining> variable matches 0..39 run return run title @s actionbar {text:"Cannot be recalibrated for another 1 second",color:"red"}
execute if score <time_remaining> variable matches 40..1199 store result score <seconds> variable run data get storage pandamium:temp time[1]
execute if score <time_remaining> variable matches 40..1199 run return run title @s actionbar {text:"Cannot be recalibrated for another ",extra:[{color:"red",score:{name:"<seconds>",objective:"variable"}}," seconds"],color:"red"}
execute if score <time_remaining> variable matches 1200..2399 run return run title @s actionbar {text:"Cannot be recalibrated for another 1 minute",color:"red"}
execute if score <time_remaining> variable matches 2400.. store result score <minutes> variable run data get storage pandamium:temp time[2]
execute if score <time_remaining> variable matches 2400.. run return run title @s actionbar {text:"Cannot be recalibrated for another ",extra:[{color:"red",score:{name:"<minutes>",objective:"variable"}}," minutes"],color:"red"}

execute store result storage pandamium:local functions."pandamium:detect/use_pale_garden_compass/*".user_id int 1 run scoreboard players get @s id
scoreboard players set <already_queued> variable 0
function pandamium:detect/use_pale_garden_compass/check_if_already_queued with storage pandamium:local functions."pandamium:detect/use_pale_garden_compass/*"
execute if score <already_queued> variable matches 1 run return 0

# queue calibration
data modify storage pandamium:queue entries append value {action:"pale_garden_compass"}
execute store result storage pandamium:queue entries[-1].user_id int 1 run scoreboard players get @s id
execute in pandamium:staff_world run data modify storage pandamium:queue entries[-1].item set from block 5 0 0 item
execute if score <mainhand> variable matches 1 run data modify storage pandamium:queue entries[-1].slot set value "weapon.mainhand"
execute if score <mainhand> variable matches 0 run data modify storage pandamium:queue entries[-1].slot set value "weapon.offhand"

# remove item
execute if score <mainhand> variable matches 1 run item modify entity @s weapon.mainhand pandamium:decrement_count
execute if score <mainhand> variable matches 0 run item modify entity @s weapon.offhand pandamium:decrement_count
