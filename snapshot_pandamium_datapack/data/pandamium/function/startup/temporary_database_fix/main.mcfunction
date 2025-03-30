# check done
execute if score <completed_database_fix_version> global matches 1013.. run return 0
scoreboard players set <completed_database_fix_version> global 1013

# announce
#function pandamium:utils/log {args:{tell_online:true,message:"Datafixer started"}}

# run instantly
#scoreboard objectives remove player_info_v2

# schedule fixes
#data modify storage pandamium:queue entries append value {action:"datafixer.db.players",meta:{do_bossbar:true}}
#data modify storage pandamium:queue entries append value {action:"datafixer.db.mail",meta:{do_bossbar:true}}
#data modify storage pandamium:queue entries append value {action:"datafixer.db.entities",meta:{do_bossbar:true}}
function pandamium:utils/leader_board/refresh_leader_board/all

# complete instantly
#function pandamium:utils/log {args:{tell_online:true,message:"Datafixer finished"}}

return 1
