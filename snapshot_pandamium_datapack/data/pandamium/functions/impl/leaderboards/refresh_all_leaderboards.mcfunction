data modify storage pandamium:leaderboards total_votes merge value { title: "Total Votes", template: "generic", source_objective: "votes", operation: "none", max_entries: 15, buffer_entries: 5}
data modify storage pandamium:leaderboards total_playtime merge value { title: "Total Playtime",template: "generic", source_objective: "playtime_ticks", operation: "ticks_to_hours", max_entries: 15, buffer_entries: 5}
data modify storage pandamium:leaderboards monthly_votes merge value { title: "Monthly Votes",template: "generic", source_objective: "monthly_votes", operation: "none", max_entries: 15, buffer_entries: 5}
data modify storage pandamium:leaderboards monthly_playtime merge value { title: "Monthly Playtime",template: "generic", source_objective: "monthly_playtime_ticks", operation: "ticks_to_hours", max_entries: 15, buffer_entries: 5}

execute store result score <total_entries> variable if data storage pandamium.db:players entries[]
scoreboard players add <total_entries> variable 1

# schedule
data modify storage pandamium:queue queue append value {action: "leaderboards/refresh/start",type:"total_votes",wait:0}
execute store result storage pandamium:queue queue[-1].wait int 1 run scoreboard players set <wait> variable 0
data modify storage pandamium:queue queue append value {action: "leaderboards/refresh/start",type:"total_playtime"}
execute store result storage pandamium:queue queue[-1].wait int 1 run scoreboard players operation <wait> variable += <total_entries> variable
data modify storage pandamium:queue queue append value {action: "leaderboards/refresh/start",type:"monthly_votes"}
execute store result storage pandamium:queue queue[-1].wait int 1 run scoreboard players operation <wait> variable += <total_entries> variable
data modify storage pandamium:queue queue append value {action: "leaderboards/refresh/start",type:"monthly_playtime"}
execute store result storage pandamium:queue queue[-1].wait int 1 run scoreboard players operation <wait> variable += <total_entries> variable

# create bossbars
bossbar add pandamium:progress.leaderboards.total_votes {"text":"[Leaderboards] total_votes: waiting"}
bossbar set pandamium:progress.leaderboards.total_votes players @a[scores={send_extra_debug_info=1..}]
bossbar add pandamium:progress.leaderboards.total_playtime {"text":"[Leaderboards] total_playtime: waiting"}
bossbar set pandamium:progress.leaderboards.total_playtime players @a[scores={send_extra_debug_info=1..}]
bossbar add pandamium:progress.leaderboards.monthly_votes {"text":"[Leaderboards] monthly_votes: waiting"}
bossbar set pandamium:progress.leaderboards.monthly_votes players @a[scores={send_extra_debug_info=1..}]
bossbar add pandamium:progress.leaderboards.monthly_playtime {"text":"[Leaderboards] monthly_playtime: waiting"}
bossbar set pandamium:progress.leaderboards.monthly_playtime players @a[scores={send_extra_debug_info=1..}]
