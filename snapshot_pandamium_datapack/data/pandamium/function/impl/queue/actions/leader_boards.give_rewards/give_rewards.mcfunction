# arguments: credits, username

$execute if score <give_flairs_perk> variable matches 1 run scoreboard players set $(username) has_flairs_perk 1
$scoreboard players add $(username) reward_credits $(credits)
