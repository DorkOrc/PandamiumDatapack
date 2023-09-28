data modify storage pandamium.logs:punishments history append value {type:"ban",date:[I;0,0,0,0],gametime:0,target:"???",source:"???",target_is_online:0b}

execute store result data pandamium.logs:punishments history[-1].date[0] int 1 run scoreboard players get <year> global
execute store result data pandamium.logs:punishments history[-1].date[1] int 1 run scoreboard players get <month> global
execute store result data pandamium.logs:punishments history[-1].date[2] int 1 run scoreboard players get <day> global
execute store result data pandamium.logs:punishments history[-1].date[3] int 1 run scoreboard players get <hour> global

execute store result data pandamium.logs:punishments history[-1].gametime int 1 run time query gametime

data modify storage pandamium.logs:punishments history[-1].target set from storage pandamium.db:players selected.entry.username

function pandamium:utils/get/username
data modify storage pandamium.logs:punishments history[-1].source set from storage pandamium:temp username

execute store result data pandamium.logs:punishments history[-1].target_is_online byte 1 run scoreboard players get <target_is_online> variable
