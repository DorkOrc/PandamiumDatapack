# hour_id = (((year-2000)*12+month-1)*31+day-1)*24+hour
data modify storage pandamium:global recent_hour_ids append value 0
scoreboard players operation <hour_id> global = <year> global
scoreboard players remove <hour_id> global 2000
scoreboard players operation <hour_id> global *= #12 constant
scoreboard players operation <hour_id> global += <month> global
scoreboard players remove <hour_id> global 1
scoreboard players operation <hour_id> global *= #31 constant
scoreboard players operation <hour_id> global += <day> global
scoreboard players remove <hour_id> global 1
scoreboard players operation <hour_id> global *= #24 constant
execute store result storage pandamium:global recent_hour_ids[-1] int 1 store result storage pandamium:templates teleport.hour_id int 1 store result storage pandamium:templates macro.id.id int 1 run scoreboard players operation <hour_id> global += <hour> global

scoreboard players set <expired_hour_id> global -2147483648
execute unless data storage pandamium:global recent_hour_ids[24] run return 0
execute store result score <expired_hour_id> global run data get storage pandamium:global recent_hour_ids[0]
data remove storage pandamium:global recent_hour_ids[0]
# delete expired teleports
function pandamium:impl/update_hour_id/with_hour_id with storage pandamium:templates macro.id
