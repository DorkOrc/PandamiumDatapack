execute if data storage pandamium:queue entries[{action:"refresh_leader_board"}] run tellraw @s [{color:"dark_red",text:"[admin]"},{text:" A leader board refresh is already taking place!",color:"red"}]
execute if data storage pandamium:queue entries[{action:"refresh_leader_board"}] run return fail

data modify storage pandamium:queue entries append value {action:"refresh_leader_board",type:"monthly_playtime",meta:{do_bossbar:1b}}
data modify storage pandamium:queue entries append value {action:"refresh_leader_board",type:"monthly_votes",meta:{do_bossbar:1b}}

tellraw @s [{color:"dark_green",text:"[admin]"},[{color:"green",text:" Queued refreshing leader boards: "},[{color:"aqua",text:"["},{storage:"pandamium:queue",nbt:"entries[{action:'refresh_leader_board'}].type",separator:["]",{color:"green",text:", "},"["]},"]"],"."]]
