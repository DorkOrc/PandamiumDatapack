# arguments: id, place, place_suffix, leaderboard_name, username

$data modify storage pandamium:temp rewards[{id:$(id)}].places append value "$(place)$(place_suffix) in $(leaderboard_name)"

# reward credits
$execute store result score <rewarded_credits> variable run data get storage pandamium:dictionary leaderboards.place_reward_credits."$(place)"

$scoreboard players operation $(username) reward_credits += <rewarded_credits> variable

$execute store result score <total_credits_rewarded> variable run data get storage pandamium:temp rewards[{id:$(id)}].total_credits_rewarded
$execute store result storage pandamium:temp rewards[{id:$(id)}].total_credits_rewarded int 1 run scoreboard players operation <total_credits_rewarded> variable += <rewarded_credits> variable

# flair
$execute if score <place> variable matches 1..10 run data modify storage pandamium:temp rewards[{id:$(id)}].do_flair set value 1b
