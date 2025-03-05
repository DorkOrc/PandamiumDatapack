execute if data storage pandamium:queue entries[{action:"refresh_leader_board"}] run tellraw @s [{color:"dark_red",text:"[admin]"},{color:"red",text:" A leader board refresh is already taking place!"}]
execute if data storage pandamium:queue entries[{action:"refresh_leader_board"}] run return fail

data modify storage pandamium:queue entries append value {action:"refresh_leader_board",type:"monthly_playtime",meta:{do_bossbar:1b}}
data modify storage pandamium:queue entries append value {action:"refresh_leader_board",type:"monthly_votes",meta:{do_bossbar:1b}}
data modify storage pandamium:queue entries append value {action:"refresh_leader_board",type:"parkour_3",meta:{do_bossbar:1b}}
data modify storage pandamium:queue entries append value {action:"refresh_leader_board",type:"parkour_4",meta:{do_bossbar:1b}}
data modify storage pandamium:queue entries append value {action:"refresh_leader_board",type:"total_playtime",meta:{do_bossbar:1b}}
data modify storage pandamium:queue entries append value {action:"refresh_leader_board",type:"total_votes",meta:{do_bossbar:1b}}
data modify storage pandamium:queue entries append value {action:"refresh_leader_board",type:"yearly_playtime",meta:{do_bossbar:1b}}
data modify storage pandamium:queue entries append value {action:"refresh_leader_board",type:"yearly_votes",meta:{do_bossbar:1b}}

tellraw @s [{color:"dark_green",text:"[admin]"},[{color:"green",text:" Queued refreshing leader boards: "},[{color:"aqua",text:"["},{storage:"pandamium:queue",nbt:"entries[{action:'refresh_leader_board'}].type",separator:["]",{color:"green",text:", "},"["]},"]"],"."]]
