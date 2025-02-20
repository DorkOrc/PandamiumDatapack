# check done
execute if score <completed_database_fix_version> global matches 1010.. run return 0
scoreboard players set <completed_database_fix_version> global 1010

# announce
function pandamium:utils/log {args:{message:"Datafixer started"}}
tellraw @a[scores={send_extra_debug_info=2..}] {color:"gray",italic:true,text:"[Pandamium: Datafixer started]"}

# run
#data modify storage pandamium:queue entries append value {action:"datafixer.db.players",meta:{do_bossbar:true}}
#data modify storage pandamium:queue entries append value {action:"datafixer.db.mail",meta:{do_bossbar:true}}
#data modify storage pandamium:queue entries append value {action:"datafixer.db.entities",meta:{do_bossbar:true}}
#function pandamium:admin/refresh_leader_board/groups/all

# run instantly
data remove storage pandamium:dictionary particle_trail_types

function pandamium:utils/log {args:{message:"Datafixer finished"}}
tellraw @a[scores={send_extra_debug_info=2..}] {color:"gray",italic:true,text:"[Pandamium: Datafixer finished]"}

return 1
