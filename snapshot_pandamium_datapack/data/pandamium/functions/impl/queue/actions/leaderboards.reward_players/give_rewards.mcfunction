# arguments: username, total_credits_rewarded

$scoreboard players add $(username) reward_credits $(total_credits_rewarded)

execute store result score <give_flairs_perk> variable run data get storage pandamium:queue selected.entry.entries[0].give_flairs_perk
$execute if score <give_flairs_perk> variable matches 1 run scoreboard players set $(username) has_flairs_perk 1
