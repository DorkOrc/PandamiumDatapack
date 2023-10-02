# Ran by external program
# input: username

# announce vote (unless hidden)
$execute if score $(username) playtime_ticks matches 0.. unless score $(username) hide_voting_announcements matches 1 if score <vote_credits_rewarded> global matches 1 run tellraw @a [{"text":"[Voting] ","color":"blue"},{"text":"$(username)","color":"aqua"},{"text":" got ","color":"green"},{"text":"1 reward credit","color":"aqua"},{"text":" for voting!","color":"green"}]
$execute if score $(username) playtime_ticks matches 0.. unless score $(username) hide_voting_announcements matches 1 unless score <vote_credits_rewarded> global matches 1 run tellraw @a [{"text":"[Voting] ","color":"blue"},{"text":"$(username)","color":"aqua"},{"text":" got ","color":"green"},[{"score":{"name":"<vote_credits_rewarded>","objective":"global"},"color":"aqua"}," reward credits"],{"text":" for voting!","color":"green"}]
$execute if score $(username) playtime_ticks matches 0.. if score $(username) hide_voting_announcements matches 1 run tellraw @a[scores={staff_perms=1..}] [{"text":"[Staff Info]","color":"dark_gray"},[{"text":" Hidden vote message from ","color":"gray"},{"text":"$(username)","color":"green"},"!"]]

# log blocked voting message
$execute unless score $(username) playtime_ticks matches 0.. run tellraw @a[scores={staff_perms=1..}] [{"text":"[Staff Info]","color":"dark_gray"},[{"text":" Blocked vote message from ","color":"gray"},{"text":"$(username)","color":"yellow"},"!"]]

# if online
$execute as $(username) at @s run function pandamium:player/on_vote/as_player

# increase player stats
$scoreboard players add $(username) votes 1
$scoreboard players add $(username) monthly_votes 1
$scoreboard players operation $(username) vote_credits += <vote_credits_rewarded> global
$execute unless entity $(username) if data storage pandamium.db:players username_indexes."$(username)" run scoreboard players add $(username) offline_votes 1

# update place on voting leaderboards (unless blocked)
$execute if score $(username) playtime_ticks matches 0.. run function pandamium:impl/leaderboards/update_user_place/main {username:"$(username)",type:"total_votes"}
$execute if score $(username) playtime_ticks matches 0.. run function pandamium:impl/leaderboards/update_user_place/main {username:"$(username)",type:"monthly_votes"}
$execute if score $(username) playtime_ticks matches 0.. run function pandamium:misc/leaderboards/refresh_holograms

# advancement progress
$function pandamium:misc/update_rank_advancement_progress/from_username {username:"$(username)"}
