execute if data storage pandamium:queue entries[{action:"refresh_leader_board"}] run tellraw @s [{"text":"[admin/refresh_all_leader_boards]","color":"dark_red"},{"text":" A leader board refresh is already taking place!","color":"red"}]
execute if data storage pandamium:queue entries[{action:"refresh_leader_board"}] run return fail

data modify storage pandamium:queue entries append value {action:"refresh_leader_board",leader_board:"total_votes",meta:{do_bossbar:1b}}
data modify storage pandamium:queue entries append value {action:"refresh_leader_board",leader_board:"total_playtime",meta:{do_bossbar:1b}}

data modify storage pandamium:queue entries append value {action:"refresh_leader_board",leader_board:"monthly_votes",meta:{do_bossbar:1b}}
data modify storage pandamium:queue entries append value {action:"refresh_leader_board",leader_board:"monthly_playtime",meta:{do_bossbar:1b}}

data modify storage pandamium:queue entries append value {action:"refresh_leader_board",leader_board:"yearly_votes",meta:{do_bossbar:1b}}
data modify storage pandamium:queue entries append value {action:"refresh_leader_board",leader_board:"yearly_playtime",meta:{do_bossbar:1b}}

data modify storage pandamium:queue entries append value {action:"refresh_leader_board",leader_board:"parkour_3",meta:{do_bossbar:1b}}
data modify storage pandamium:queue entries append value {action:"refresh_leader_board",leader_board:"parkour_3_deathless",meta:{do_bossbar:1b}}

tellraw @s [{"text":"[admin/refresh_all_leader_boards]","color":"dark_green"},[{"text":" Queued refreshing leader boards: ","color":"green"},{"text":"[","color":"aqua"},{"storage":"pandamium:queue","nbt":"entries[{action:'refresh_leader_board'}].leader_board","color":"aqua","separator":["]",{"text":", ","color":"green"},"["]},{"text":"]","color":"aqua"},"."]]
