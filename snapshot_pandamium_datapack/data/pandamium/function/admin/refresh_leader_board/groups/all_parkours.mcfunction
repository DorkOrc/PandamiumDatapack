execute if data storage pandamium:queue entries[{action:"refresh_leader_board"}] run tellraw @s [{text:"[admin]",color:"dark_red"},{text:" A leader board refresh is already taking place!",color:"red"}]
execute if data storage pandamium:queue entries[{action:"refresh_leader_board"}] run return fail

data modify storage pandamium:queue entries append value {action:"refresh_leader_board",leader_board:"parkour_3",meta:{do_bossbar:1b}}
data modify storage pandamium:queue entries append value {action:"refresh_leader_board",leader_board:"parkour_3_deathless",meta:{do_bossbar:1b}}

tellraw @s [{text:"[admin]",color:"dark_green"},{text:" Queued refreshing leader boards: ",color:"green",extra:[{text:"[",color:"aqua"},{storage:"pandamium:queue",nbt:"entries[{action:'refresh_leader_board'}].leader_board",color:"aqua",separator:[{text:"]"},{text:", ",color:"green"},{text:"["}]},{text:"]",color:"aqua"},{text:"."}]}]
