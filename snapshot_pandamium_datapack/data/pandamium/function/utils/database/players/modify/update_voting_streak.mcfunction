# see if there was a previously active streak
execute store result score <previous_streak_active> variable run data get storage pandamium.db.players:io selected.entry.data.voting.streaks[-1].active
execute if score <previous_streak_active> variable matches 0 run return 0

# get user ID
execute store result score <id> variable run data get storage pandamium.db.players:io selected.entry.id

# store previous length_in_days
execute store result score <previous_length_in_days> variable run data get storage pandamium.db.players:io selected.entry.data.voting.streaks[-1].length_in_days

# if there was a previously active streak, see if it was active in the last 48 hours
execute store result score <seconds_since_last_vote> variable run function pandamium:utils/datetime/get_current_seconds_since_2000
execute store result score <datetime_id> variable run data get storage pandamium.db.players:io selected.entry.data.voting.streaks[-1].last_vote_datetime
execute store result score <length_in_seconds> variable run function pandamium:utils/datetime/get_seconds_since_2000_from_datetime_id
scoreboard players operation <seconds_since_last_vote> variable -= <seconds_since_2000> variable
execute store result score <datetime_id> variable run data get storage pandamium.db.players:io selected.entry.data.voting.streaks[-1].start_datetime
function pandamium:utils/datetime/get_seconds_since_2000_from_datetime_id
execute store result storage pandamium.db.players:io selected.entry.data.voting.streaks[-1].length_in_seconds int 1 store result score <length_in_days> variable run scoreboard players operation <length_in_seconds> variable -= <seconds_since_2000> variable
execute store result storage pandamium.db.players:io selected.entry.data.voting.streaks[-1].length_in_days int 1 store result score @a[predicate=pandamium:matches_id,limit=1] voting_streak.length_in_days run scoreboard players operation <length_in_days> variable /= #seconds_per_day constant

# end streak if active and more than 48 hours ago
execute if score <seconds_since_last_vote> variable matches 172801.. run function pandamium:impl/database/players/modify/update_voting_streak/end_streak
execute if score <seconds_since_last_vote> variable matches 172801.. run return 0

# return length in days (min 1)
execute unless score <length_in_days> variable matches 1.. run return 1
return run scoreboard players get <length_in_days> variable
