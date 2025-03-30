# inputs:
# - storage pandamium:queue selected.entry.year
# - storage pandamium:queue selected.entry.month_name

data modify storage pandamium:queue selected.entry.meta.name set value "Preparing Monthly Rewards"

execute unless data storage pandamium.leader_boards:data previous_month_data.backups.monthly_playtime.active.entries[] unless data storage pandamium.leader_boards:data previous_month_data.backups.monthly_votes.active.entries[] run return run data modify storage pandamium:queue selected.entry.meta.cancel set value 1b
execute unless data storage pandamium:queue selected.entry.year run return run data modify storage pandamium:queue selected.entry.meta.cancel set value 1b
execute unless data storage pandamium:queue selected.entry.month_name run return run data modify storage pandamium:queue selected.entry.meta.cancel set value 1b

data modify storage pandamium:queue selected.entry.place set value 1

#
data modify storage pandamium:queue selected.entry.leader_boards set value []

data modify storage pandamium:queue selected.entry.leader_boards append value {type:"monthly_playtime",entries:[]}
data modify storage pandamium:text input set from storage pandamium.leader_boards:data previous_month_data.backups.monthly_playtime.display.name
function pandamium:utils/text/flatten
data modify storage pandamium:queue selected.entry.leader_boards[-1].name set from storage pandamium:text output
data modify storage pandamium:queue selected.entry.leader_boards[-1].entries append from storage pandamium.leader_boards:data previous_month_data.backups.monthly_playtime.active.entries[0]
data modify storage pandamium:queue selected.entry.leader_boards[-1].entries append from storage pandamium.leader_boards:data previous_month_data.backups.monthly_playtime.active.entries[1]
data modify storage pandamium:queue selected.entry.leader_boards[-1].entries append from storage pandamium.leader_boards:data previous_month_data.backups.monthly_playtime.active.entries[2]
data modify storage pandamium:queue selected.entry.leader_boards[-1].entries append from storage pandamium.leader_boards:data previous_month_data.backups.monthly_playtime.active.entries[3]
data modify storage pandamium:queue selected.entry.leader_boards[-1].entries append from storage pandamium.leader_boards:data previous_month_data.backups.monthly_playtime.active.entries[4]
data modify storage pandamium:queue selected.entry.leader_boards[-1].entries append from storage pandamium.leader_boards:data previous_month_data.backups.monthly_playtime.active.entries[5]
data modify storage pandamium:queue selected.entry.leader_boards[-1].entries append from storage pandamium.leader_boards:data previous_month_data.backups.monthly_playtime.active.entries[6]
data modify storage pandamium:queue selected.entry.leader_boards[-1].entries append from storage pandamium.leader_boards:data previous_month_data.backups.monthly_playtime.active.entries[7]
data modify storage pandamium:queue selected.entry.leader_boards[-1].entries append from storage pandamium.leader_boards:data previous_month_data.backups.monthly_playtime.active.entries[8]
data modify storage pandamium:queue selected.entry.leader_boards[-1].entries append from storage pandamium.leader_boards:data previous_month_data.backups.monthly_playtime.active.entries[9]
data modify storage pandamium:queue selected.entry.leader_boards[-1].entries append from storage pandamium.leader_boards:data previous_month_data.backups.monthly_playtime.active.entries[10]
data modify storage pandamium:queue selected.entry.leader_boards[-1].entries append from storage pandamium.leader_boards:data previous_month_data.backups.monthly_playtime.active.entries[11]
data modify storage pandamium:queue selected.entry.leader_boards[-1].entries append from storage pandamium.leader_boards:data previous_month_data.backups.monthly_playtime.active.entries[12]
data modify storage pandamium:queue selected.entry.leader_boards[-1].entries append from storage pandamium.leader_boards:data previous_month_data.backups.monthly_playtime.active.entries[13]
data modify storage pandamium:queue selected.entry.leader_boards[-1].entries append from storage pandamium.leader_boards:data previous_month_data.backups.monthly_playtime.active.entries[14]
execute unless data storage pandamium:queue selected.entry.leader_boards[-1].entries[].users[] run data remove storage pandamium:queue selected.entry.leader_boards[-1]

data modify storage pandamium:queue selected.entry.leader_boards append value {type:"monthly_votes",entries:[]}
data modify storage pandamium:text input set from storage pandamium.leader_boards:data previous_month_data.backups.monthly_votes.display.name
function pandamium:utils/text/flatten
data modify storage pandamium:queue selected.entry.leader_boards[-1].name set from storage pandamium:text output
data modify storage pandamium:queue selected.entry.leader_boards[-1].entries append from storage pandamium.leader_boards:data previous_month_data.backups.monthly_votes.active.entries[0]
data modify storage pandamium:queue selected.entry.leader_boards[-1].entries append from storage pandamium.leader_boards:data previous_month_data.backups.monthly_votes.active.entries[1]
data modify storage pandamium:queue selected.entry.leader_boards[-1].entries append from storage pandamium.leader_boards:data previous_month_data.backups.monthly_votes.active.entries[2]
data modify storage pandamium:queue selected.entry.leader_boards[-1].entries append from storage pandamium.leader_boards:data previous_month_data.backups.monthly_votes.active.entries[3]
data modify storage pandamium:queue selected.entry.leader_boards[-1].entries append from storage pandamium.leader_boards:data previous_month_data.backups.monthly_votes.active.entries[4]
data modify storage pandamium:queue selected.entry.leader_boards[-1].entries append from storage pandamium.leader_boards:data previous_month_data.backups.monthly_votes.active.entries[5]
data modify storage pandamium:queue selected.entry.leader_boards[-1].entries append from storage pandamium.leader_boards:data previous_month_data.backups.monthly_votes.active.entries[6]
data modify storage pandamium:queue selected.entry.leader_boards[-1].entries append from storage pandamium.leader_boards:data previous_month_data.backups.monthly_votes.active.entries[7]
data modify storage pandamium:queue selected.entry.leader_boards[-1].entries append from storage pandamium.leader_boards:data previous_month_data.backups.monthly_votes.active.entries[8]
data modify storage pandamium:queue selected.entry.leader_boards[-1].entries append from storage pandamium.leader_boards:data previous_month_data.backups.monthly_votes.active.entries[9]
data modify storage pandamium:queue selected.entry.leader_boards[-1].entries append from storage pandamium.leader_boards:data previous_month_data.backups.monthly_votes.active.entries[10]
data modify storage pandamium:queue selected.entry.leader_boards[-1].entries append from storage pandamium.leader_boards:data previous_month_data.backups.monthly_votes.active.entries[11]
data modify storage pandamium:queue selected.entry.leader_boards[-1].entries append from storage pandamium.leader_boards:data previous_month_data.backups.monthly_votes.active.entries[12]
data modify storage pandamium:queue selected.entry.leader_boards[-1].entries append from storage pandamium.leader_boards:data previous_month_data.backups.monthly_votes.active.entries[13]
data modify storage pandamium:queue selected.entry.leader_boards[-1].entries append from storage pandamium.leader_boards:data previous_month_data.backups.monthly_votes.active.entries[14]
execute unless data storage pandamium:queue selected.entry.leader_boards[-1].entries[].users[] run data remove storage pandamium:queue selected.entry.leader_boards[-1]

#
execute store result score <entries> variable store result storage pandamium:queue selected.entry.meta.max int 1 if data storage pandamium:queue selected.entry.leader_boards[].entries[].users[]
execute if score <entries> variable matches 0 run data modify storage pandamium:queue selected.entry.meta.cancel set value 1b
