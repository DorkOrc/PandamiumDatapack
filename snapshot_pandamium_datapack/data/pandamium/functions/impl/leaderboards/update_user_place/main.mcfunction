# arguments: type, username

# init arguments
$data modify storage pandamium:temp arguments set value {type:"$(type)",username:"$(username)",operation:"none"}

# check if user is in the database
$execute unless data storage pandamium.db.players:data username_indexes."$(username)" run return 0

# check if leaderboard has been initialised
$execute unless data storage pandamium.leader_boards:data leader_boards."$(type)" run return 0

# get user id
$execute store result storage pandamium:temp arguments.id int 1 store result score <id> variable run scoreboard players get $(username) id
execute unless score <id> variable matches 2.. run return 0

# check priority among alts
function pandamium:utils/database/players/load/from_id with storage pandamium:temp arguments
data modify storage pandamium:temp priority set value {id:0}
execute store result score <priority_id> variable store result storage pandamium:temp priority.id int 1 run data get storage pandamium.db.players:io selected.entry.id
execute if data storage pandamium.db.players:io selected.entry.data.alt_of run function pandamium:utils/database/players/load/from_id with storage pandamium.db.players:io selected.entry.data.alt_of
execute if data storage pandamium.db.players:io selected.entry.data.alts run function pandamium:impl/leaderboards/update_user_place/get_priority with storage pandamium:temp arguments
execute unless score <priority_id> variable = <id> variable run return 0

# get value provider data
$data modify storage pandamium:temp arguments.source_objective set from storage pandamium.leader_boards:data leader_boards.$(type).source_objective
$data modify storage pandamium:temp arguments.operation set from storage pandamium.leader_boards:data leader_boards.$(type).operation
execute unless data storage pandamium:temp arguments.source_objective run return 0

# get maximum entries (index of excess entry to remove), and total entries
$execute store result score <max_entries> variable run data get storage pandamium.leader_boards:data leader_boards.$(type).max_entries
$execute store result score <buffer_entries> variable run data get storage pandamium.leader_boards:data leader_boards.$(type).buffer_entries
execute store result storage pandamium:temp arguments.max_entries int 1 run scoreboard players operation <max_entries> variable += <buffer_entries> variable
$execute store result score <total_entries> variable if data storage pandamium.leader_boards:data leader_boards.$(type).entries[]

# do update
function pandamium:impl/leaderboards/update_user_place/get_value_and_entries with storage pandamium:temp arguments

# update highest-value global scores
execute store result score <monthly_votes_leaderboard_highest_value> global run data get storage pandamium.leader_boards:data leader_boards.monthly_votes.entries[0].value
execute store result score <monthly_playtime_leaderboard_highest_value> global run data get storage pandamium.leader_boards:data leader_boards.monthly_playtime.entries[0].value
