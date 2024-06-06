execute unless data storage pandamium:queue entries[{action:"refresh_leader_board"}] run tellraw @s [{"text":"[admin]","color":"dark_red"},{"text":" No leader board refreshes are taking place!","color":"red"}]
execute unless data storage pandamium:queue entries[{action:"refresh_leader_board"}] run return fail

data modify storage pandamium:queue entries[{action:"refresh_leader_board"}].meta.cancel set value 1b

tellraw @s [{"text":"[admin]","color":"dark_green"},[{"text":" Cancelled all refreshing leader boards: ","color":"green"},{"text":"[","color":"aqua"},{"storage":"pandamium:queue","nbt":"entries[{action:'refresh_leader_board'}].leader_board","color":"aqua","separator":["]",{"text":", ","color":"green"},"["]},{"text":"]","color":"aqua"},"."]]
