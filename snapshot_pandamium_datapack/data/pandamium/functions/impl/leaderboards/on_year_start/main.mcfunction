## Verification

# get stored date
execute store result score <stored_year> variable run data get storage pandamium:leaderboards previous_year_data.year

# get current date
scoreboard players operation <previous_year> variable = <year> global
scoreboard players remove <previous_year> variable 1

# unless stored month leader board is from an earlier month, stop.
execute unless score <stored_year> variable < <previous_year> variable run return -1

## Replace with latest data and reset live leader boards

# erase old data
data remove storage pandamium:leaderboards previous_year_data
data modify storage pandamium:leaderboards previous_year_data set value {backups: {}, year: 0, copy_to_clipboard_root: '""'}

# backup then reset live yearly_votes
data modify storage pandamium:leaderboards previous_year_data.backups.yearly_votes set from storage pandamium:leaderboards leader_boards.yearly_votes
function pandamium:impl/leaderboards/reset_without_backup {type: "yearly_votes"}

# backup then reset live yearly_playtime
data modify storage pandamium:leaderboards previous_year_data.backups.yearly_playtime set from storage pandamium:leaderboards leader_boards.yearly_playtime
function pandamium:impl/leaderboards/reset_without_backup {type: "yearly_playtime"}

# store date
scoreboard players operation <stored_year> variable = <year> global
scoreboard players remove <stored_year> variable 1

execute store result storage pandamium:leaderboards previous_year_data.year int 1 run scoreboard players get <stored_year> variable

## Reset all players' yearly votes/playtime scores

scoreboard players reset * yearly_playtime_ticks
scoreboard players reset * yearly_votes

return 1
