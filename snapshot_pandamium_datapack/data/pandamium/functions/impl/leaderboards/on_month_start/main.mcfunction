## Verification

# get stored date
execute store result score <stored_month> variable run data get storage pandamium:leaderboards previous_month_data.month
execute store result score <stored_year_and_month> variable run data get storage pandamium:leaderboards previous_month_data.year 12
scoreboard players operation <stored_year_and_month> variable += <stored_month> variable
scoreboard players remove <stored_year_and_month> variable 1

# get current date
scoreboard players operation <previous_year_and_month> variable = <year> global
scoreboard players operation <previous_year_and_month> variable *= #12 constant
scoreboard players operation <previous_year_and_month> variable += <month> global
scoreboard players remove <previous_year_and_month> variable 2

# unless stored month leader board is from an earlier month, stop.
execute unless score <stored_year_and_month> variable < <previous_year_and_month> variable run return -1

## Replace with latest data and reset live leader boards

# erase old data
data remove storage pandamium:leaderboards previous_month_data
data modify storage pandamium:leaderboards previous_month_data set value {backups: {}, rewards_granted: 0b, month: 0, year: 0, copy_to_clipboard_root: '""'}

# backup then reset live monthly_votes
data modify storage pandamium:leaderboards previous_month_data.backups.monthly_votes set from storage pandamium:leaderboards leader_boards.monthly_votes
function pandamium:impl/leaderboards/reset_without_backup {type: "monthly_votes"}

# backup then reset live monthly_playtime
data modify storage pandamium:leaderboards previous_month_data.backups.monthly_playtime set from storage pandamium:leaderboards leader_boards.monthly_playtime
function pandamium:impl/leaderboards/reset_without_backup {type: "monthly_playtime"}

# store date
scoreboard players operation <stored_year> variable = <year> global
scoreboard players operation <stored_month> variable = <month> global

scoreboard players remove <stored_month> variable 1
execute if score <stored_month> variable matches 0 run scoreboard players remove <stored_year> variable 1
execute if score <stored_month> variable matches 0 run scoreboard players set <stored_month> variable 12

execute store result storage pandamium:leaderboards previous_month_data.month int 1 run scoreboard players get <stored_month> variable
execute store result storage pandamium:leaderboards previous_month_data.year int 1 run scoreboard players get <stored_year> variable

## Get player rewards information, then queue rewards (and mail)

data modify storage pandamium:temp rewards set value []
function pandamium:impl/leaderboards/on_month_start/get_player_reward_data/main {type: "monthly_votes"}
function pandamium:impl/leaderboards/on_month_start/get_player_reward_data/main {type: "monthly_playtime"}

data modify storage pandamium:queue entries append value {action: "leaderboards.reward_players", entries: []}
data modify storage pandamium:queue entries[-1].entries set from storage pandamium:temp rewards

## Reset all players' monthly votes/playtime scores

scoreboard players reset * monthly_playtime_ticks
scoreboard players reset * monthly_votes

scoreboard players reset * has_flairs_perk

return 1
