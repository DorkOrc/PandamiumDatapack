# see if there was a previously active streak
execute store result score <streak_length> variable run function pandamium:utils/database/players/modify/update_voting_streak

# start new streak if there is no active streak
execute if score <streak_length> variable matches 0 run function pandamium:player/on_vote/start_new_streak

# increment votes in latest streak
execute store result score <votes> variable run data get storage pandamium.db.players:io selected.entry.data.voting.streaks[-1].votes
execute store result storage pandamium.db.players:io selected.entry.data.voting.streaks[-1].votes int 1 run scoreboard players add <votes> variable 1
execute store result storage pandamium.db.players:io selected.entry.data.voting.streaks[-1].last_vote_datetime int 1 run function pandamium:utils/datetime/get_current_datetime_id
function pandamium:utils/database/players/modify/update_voting_streak

# save db entry
function pandamium:utils/database/players/save
