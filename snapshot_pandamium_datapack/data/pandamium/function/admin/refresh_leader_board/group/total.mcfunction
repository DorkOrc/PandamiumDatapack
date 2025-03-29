execute if data storage pandamium:queue entries[{action:"leader_boards.update_places"}] run tellraw @s [{color:"dark_red",text:"[admin]"},{text:" A leader board refresh is already taking place!",color:"red"}]
execute if data storage pandamium:queue entries[{action:"leader_boards.update_places"}] run return fail

data modify storage pandamium:queue entries append value {action:"leader_boards.update_places",type:"total_playtime",meta:{do_bossbar:1b}}
data modify storage pandamium:queue entries append value {action:"leader_boards.update_places",type:"total_votes",meta:{do_bossbar:1b}}

tellraw @s [{color:"dark_green",text:"[admin]"},[{color:"green",text:" Queued refreshing leader boards: "},[{color:"aqua",text:"["},{storage:"pandamium:queue",nbt:"entries[{action:'leader_boards.update_places'}].type",separator:["]",{color:"green",text:", "},"["]},"]"],"."]]
