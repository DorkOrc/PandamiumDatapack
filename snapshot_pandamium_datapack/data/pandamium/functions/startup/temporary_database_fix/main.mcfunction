# check done
execute if score <completed_database_fix_05_01_2024> global matches 1 run return 0

# # pre
# data remove storage pandamium.db:regions entries[].chunks[].homes[]

# # queue
# data modify storage pandamium:queue entries append value {action:"database.datafixer",entries:[],initial_entries_length:0}
# execute store result storage pandamium:queue entries[-1].initial_entries_length int 1 run data get storage pandamium.db:players entries
# data modify storage pandamium:queue entries[-1].entries append from storage pandamium.db:players entries[]

# # announce
# tellraw @a[scores={send_extra_debug_info=2..}] {"color":"gray","italic":true,"text":"[queue.database.datafixer: Started data migration for regions data]"}

data modify storage pandamium:leaderboards leader_boards.monthly_votes set from storage pandamium:leaderboards monthly_votes
data remove storage pandamium:leaderboards monthly_votes

data modify storage pandamium:leaderboards leader_boards.monthly_playtime set from storage pandamium:leaderboards monthly_playtime
data remove storage pandamium:leaderboards monthly_playtime

data modify storage pandamium:leaderboards leader_boards.total_votes set from storage pandamium:leaderboards total_votes
data remove storage pandamium:leaderboards total_votes

data modify storage pandamium:leaderboards leader_boards.total_playtime set from storage pandamium:leaderboards total_playtime
data remove storage pandamium:leaderboards total_playtime

tellraw @a[scores={send_extra_debug_info=2..}] {"color":"gray","italic":true,"text":"[datafixer: Migrated leaderboard data to new location]"}

# mark as done
scoreboard players set <completed_database_fix_05_01_2024> global 1
