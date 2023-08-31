# Ran by external program
# input: username

$execute if score $(username) playtime_ticks matches 0.. run data modify storage pandamium:queue queue append value {action:"announce_vote",wait:0,username:"$(username)"}
$execute as $(username) at @s run function pandamium:player/on_vote/as_player
$scoreboard players add $(username) votes 1
$scoreboard players add $(username) monthly_votes 1
$scoreboard players add $(username) vote_credits 1
