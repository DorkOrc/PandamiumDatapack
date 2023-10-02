# arguments: username

$scoreboard players operation <rank_credits> variable = $(username) playtime_ticks
scoreboard players operation <rank_credits> variable /= #ticks_per_hour constant
$scoreboard players operation <rank_credits> variable < $(username) votes
