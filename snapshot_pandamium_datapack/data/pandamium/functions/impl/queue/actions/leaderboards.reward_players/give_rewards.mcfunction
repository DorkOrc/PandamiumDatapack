# arguments: username, total_credits_rewarded

$scoreboard players add $(username) previous_month_leaderboard_reward_type $(total_credits_rewarded)

execute store result score <flair> variable run data get storage pandamium:queue selected.entry.entries[0].flair
$execute if score <flair> variable matches 1 run scoreboard players set $(username) previous_month_leaderboard_reward_type 1
