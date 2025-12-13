# check done
execute if score <completed_database_fix_version> global matches 1016.. run return 0
scoreboard players set <completed_database_fix_version> global 1016

# announce
#function pandamium:utils/log {args:{tell_online:true,message:"Datafixer started"}}

# run instantly
#data modify storage pandamium.leader_boards:data leader_boards_old set from storage pandamium.leader_boards:data leader_boards
#data remove storage pandamium.leader_boards:data leader_boards

# schedule fixes
#function pandamium:utils/leader_board/refresh_leader_board/all

data modify storage pandamium:queue entries append value {action:"datafixer.db.players",meta:{do_bossbar:true}}
#data modify storage pandamium:queue entries append value {action:"datafixer.db.mail",meta:{do_bossbar:true}}
#data modify storage pandamium:queue entries append value {action:"datafixer.db.entities",meta:{do_bossbar:true}}

# complete instantly
#function pandamium:utils/log {args:{tell_online:true,message:"Datafixer finished"}}

return 1
