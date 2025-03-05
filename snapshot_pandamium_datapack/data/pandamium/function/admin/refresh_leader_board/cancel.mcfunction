execute unless data storage pandamium:queue entries[{action:"refresh_leader_board"}] run tellraw @s [{color:"dark_red",text:"[admin]"},{color:"red",text:" No leader board refreshes are taking place!"}]
execute unless data storage pandamium:queue entries[{action:"refresh_leader_board"}] run return fail

data modify storage pandamium:queue entries[{action:"refresh_leader_board"}].meta.cancel set value 1b

tellraw @s [{color:"dark_green",text:"[admin]"},[{color:"green",text:" Cancelled all refreshing leader boards: "},[{color:"aqua",text:"["},{storage:"pandamium:queue",nbt:"entries[{action:'refresh_leader_board'}].type",separator:["]",{color:"green",text:", "},"["]},"]"],"."]]
