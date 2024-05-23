scoreboard players operation <previous_hour_id> variable = <hour_id> global

# hour_id = (((year-2000)*12+month-1)*31+day-1)*24+hour
scoreboard players operation <hour_id> global = <year> global
scoreboard players remove <hour_id> global 2000
scoreboard players operation <hour_id> global *= #12 constant
scoreboard players operation <hour_id> global += <month> global
scoreboard players remove <hour_id> global 1
scoreboard players operation <hour_id> global *= #31 constant
scoreboard players operation <hour_id> global += <day> global
scoreboard players remove <hour_id> global 1
scoreboard players operation <hour_id> global *= #24 constant
scoreboard players operation <hour_id> global += <hour> global

# if the hour id is different, continue
execute if score <previous_hour_id> variable = <hour_id> global run return 0

# store new hour_id in recent_hour_ids list
data modify storage pandamium:global recent_hour_ids append value 0
execute store result storage pandamium:global recent_hour_ids[-1] int 1 store result storage pandamium:templates teleport.hour_id int 1 run scoreboard players get <hour_id> global

# delete expired teleports
scoreboard players set <expired_hour_id> global -2147483648
execute unless data storage pandamium:global recent_hour_ids[24] run return 1
execute store result score <expired_hour_id> global store result storage pandamium:templates macro.expired_hour_id.expired_hour_id int 1 run data get storage pandamium:global recent_hour_ids[0]
data remove storage pandamium:global recent_hour_ids[0]
function pandamium:impl/update_hour_id/with_hour_id with storage pandamium:templates macro.expired_hour_id

# return
return 1
