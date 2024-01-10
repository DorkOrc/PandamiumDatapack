# check done
execute if score <completed_database_fix_10_01_2024> global matches 1 run return 0

# pre
function pandamium:impl/leaderboards/reset_without_backup {type:"yearly_votes"}
data modify storage pandamium:leaderboards leader_boards.yearly_votes.entries set from storage pandamium:leaderboards leader_boards.monthly_votes.entries
data modify storage pandamium:leaderboards leader_boards.yearly_votes.format set from storage pandamium:leaderboards leader_boards.monthly_votes.format

function pandamium:impl/leaderboards/reset_without_backup {type:"yearly_playtime"}
data modify storage pandamium:leaderboards leader_boards.yearly_playtime.entries set from storage pandamium:leaderboards leader_boards.monthly_playtime.entries
data modify storage pandamium:leaderboards leader_boards.yearly_playtime.format set from storage pandamium:leaderboards leader_boards.monthly_playtime.format

# queue
data modify storage pandamium:queue entries append value {action:"database.datafixer",entries:[],initial_entries_length:0}
execute store result storage pandamium:queue entries[-1].initial_entries_length int 1 run data get storage pandamium.db:players entries
data modify storage pandamium:queue entries[-1].entries append from storage pandamium.db:players entries[].username

# refresh leaderboards (by the time it gets to the yearly ones, the above should be done)
function pandamium:admin/refresh_all_leaderboards

# announce
tellraw @a[scores={send_extra_debug_info=2..}] {"color":"gray","italic":true,"text":"[queue.database.datafixer: Started copying January monthly leader board data to 2024 yearly leader board data]"}

# mark as done
scoreboard players set <completed_database_fix_10_01_2024> global 1
