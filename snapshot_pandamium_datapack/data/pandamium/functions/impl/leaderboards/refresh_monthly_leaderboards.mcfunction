# reset leader boards
function pandamium:impl/leaderboards/reset_without_backup {type:"monthly_playtime"}
function pandamium:impl/leaderboards/reset_without_backup {type:"monthly_votes"}

execute store result score <total_entries> variable if data storage pandamium.db.players:data entries[]
scoreboard players add <total_entries> variable 1

# schedule
data modify storage pandamium:queue entries append value {action: "leaderboards.refresh.start",type:"monthly_playtime"}
execute store result storage pandamium:queue entries[-1].wait int 1 run scoreboard players set <wait> variable 0
data modify storage pandamium:queue entries append value {action: "leaderboards.refresh.start",type:"monthly_votes"}
execute store result storage pandamium:queue entries[-1].wait int 1 run scoreboard players operation <wait> variable += <total_entries> variable

# create bossbars
bossbar add pandamium:queue/leaderboards.refresh/monthly_playtime {"text":"[leaderboards.refresh] monthly_playtime: Pending"}
bossbar set pandamium:queue/leaderboards.refresh/monthly_playtime players @a[scores={send_extra_debug_info=1..}]
bossbar add pandamium:queue/leaderboards.refresh/monthly_votes {"text":"[leaderboards.refresh] monthly_votes: Pending"}
bossbar set pandamium:queue/leaderboards.refresh/monthly_votes players @a[scores={send_extra_debug_info=1..}]
