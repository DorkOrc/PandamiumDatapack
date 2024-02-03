# reset leader boards
function pandamium:impl/leaderboards/reset_without_backup {type:"total_votes"}
function pandamium:impl/leaderboards/reset_without_backup {type:"total_playtime"}
function pandamium:impl/leaderboards/reset_without_backup {type:"monthly_votes"}
function pandamium:impl/leaderboards/reset_without_backup {type:"monthly_playtime"}
function pandamium:impl/leaderboards/reset_without_backup {type:"yearly_votes"}
function pandamium:impl/leaderboards/reset_without_backup {type:"yearly_playtime"}
function pandamium:impl/leaderboards/reset_without_backup {type:"parkour_3"}
function pandamium:impl/leaderboards/reset_without_backup {type:"parkour_3_deathless"}

execute store result score <total_entries> variable if data storage pandamium.db.players:data entries[]
scoreboard players add <total_entries> variable 1

# schedule
data modify storage pandamium:queue entries append value {action: "leaderboards.refresh.start",type:"total_votes",wait:0}
execute store result storage pandamium:queue entries[-1].wait int 1 run scoreboard players set <wait> variable 0
data modify storage pandamium:queue entries append value {action: "leaderboards.refresh.start",type:"total_playtime"}
execute store result storage pandamium:queue entries[-1].wait int 1 run scoreboard players operation <wait> variable += <total_entries> variable
data modify storage pandamium:queue entries append value {action: "leaderboards.refresh.start",type:"monthly_votes"}
execute store result storage pandamium:queue entries[-1].wait int 1 run scoreboard players operation <wait> variable += <total_entries> variable
data modify storage pandamium:queue entries append value {action: "leaderboards.refresh.start",type:"monthly_playtime"}
execute store result storage pandamium:queue entries[-1].wait int 1 run scoreboard players operation <wait> variable += <total_entries> variable
data modify storage pandamium:queue entries append value {action: "leaderboards.refresh.start",type:"yearly_votes"}
execute store result storage pandamium:queue entries[-1].wait int 1 run scoreboard players operation <wait> variable += <total_entries> variable
data modify storage pandamium:queue entries append value {action: "leaderboards.refresh.start",type:"yearly_playtime"}
execute store result storage pandamium:queue entries[-1].wait int 1 run scoreboard players operation <wait> variable += <total_entries> variable
data modify storage pandamium:queue entries append value {action: "leaderboards.refresh.start",type:"parkour_3"}
execute store result storage pandamium:queue entries[-1].wait int 1 run scoreboard players operation <wait> variable += <total_entries> variable
data modify storage pandamium:queue entries append value {action: "leaderboards.refresh.start",type:"parkour_3_deathless"}
execute store result storage pandamium:queue entries[-1].wait int 1 run scoreboard players operation <wait> variable += <total_entries> variable

# create bossbars
bossbar add pandamium:queue/leaderboards.refresh/total_votes {"text":"[leaderboards.refresh] total_votes: Pending"}
bossbar set pandamium:queue/leaderboards.refresh/total_votes players @a[scores={send_extra_debug_info=1..}]
bossbar add pandamium:queue/leaderboards.refresh/total_playtime {"text":"[leaderboards.refresh] total_playtime: Pending"}
bossbar set pandamium:queue/leaderboards.refresh/total_playtime players @a[scores={send_extra_debug_info=1..}]

bossbar add pandamium:queue/leaderboards.refresh/monthly_votes {"text":"[leaderboards.refresh] monthly_votes: Pending"}
bossbar set pandamium:queue/leaderboards.refresh/monthly_votes players @a[scores={send_extra_debug_info=1..}]
bossbar add pandamium:queue/leaderboards.refresh/monthly_playtime {"text":"[leaderboards.refresh] monthly_playtime: Pending"}
bossbar set pandamium:queue/leaderboards.refresh/monthly_playtime players @a[scores={send_extra_debug_info=1..}]

bossbar add pandamium:queue/leaderboards.refresh/yearly_votes {"text":"[leaderboards.refresh] yearly_votes: Pending"}
bossbar set pandamium:queue/leaderboards.refresh/yearly_votes players @a[scores={send_extra_debug_info=1..}]
bossbar add pandamium:queue/leaderboards.refresh/yearly_playtime {"text":"[leaderboards.refresh] yearly_playtime: Pending"}
bossbar set pandamium:queue/leaderboards.refresh/yearly_playtime players @a[scores={send_extra_debug_info=1..}]

bossbar add pandamium:queue/leaderboards.refresh/parkour_3 {"text":"[leaderboards.refresh] parkour_3: Pending"}
bossbar set pandamium:queue/leaderboards.refresh/parkour_3 players @a[scores={send_extra_debug_info=1..}]
bossbar add pandamium:queue/leaderboards.refresh/parkour_3_deathless {"text":"[leaderboards.refresh] parkour_3_deathless: Pending"}
bossbar set pandamium:queue/leaderboards.refresh/parkour_3_deathless players @a[scores={send_extra_debug_info=1..}]
