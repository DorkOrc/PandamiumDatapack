# Ran by external program
# arguments: username, service

# announce vote (unless hidden)
$execute if score $(username) playtime_ticks matches 0.. unless score $(username) hide_voting_announcements matches 1 if score <vote_credits_rewarded> global matches 1 run tellraw @a [{"text":"[Voting] ","color":"blue","hoverEvent":{"action":"show_text","contents":"service-name: $(service)"}},[{"text":"","color":"green"},{"text":"$(username)","color":"aqua"}," got ",{"text":"1 reward credit","color":"aqua"}," for voting at ",{"text":"$(service)","color":"aqua"},"!"]]
$execute if score $(username) playtime_ticks matches 0.. unless score $(username) hide_voting_announcements matches 1 if score <vote_credits_rewarded> global matches 2.. run tellraw @a [{"text":"[Voting] ","color":"blue","hoverEvent":{"action":"show_text","contents":"service-name: $(service)"}},[{"text":"","color":"green"},{"text":"$(username)","color":"aqua"}," got ",{"score":{"name":"<vote_credits_rewarded>","objective":"global"},"color":"aqua","extra":[" reward credits"]}," for voting at ",{"text":"$(service)","color":"aqua"},"!"]]
$execute if score $(username) playtime_ticks matches 0.. if score $(username) hide_voting_announcements matches 1 run tellraw @a[scores={staff_perms=1..}] [{"text":"[Staff Info]","color":"dark_gray","hoverEvent":{"action":"show_text","contents":"service-name: $(service)"}},[{"text":" Hidden vote message from $(service) for ","color":"gray"},{"text":"$(username)","color":"green"},"!"]]

# log blocked voting message
$execute unless score $(username) playtime_ticks matches 0.. run tellraw @a[scores={staff_perms=1..}] [{"text":"[Staff Info]","color":"dark_gray","hoverEvent":{"action":"show_text","contents":"service-name: $(service)"}},[{"text":" Blocked vote message from $(service) for ","color":"gray"},{"text":"$(username)","color":"yellow"},"!"]]

# increase server stats
scoreboard players add <votes_this_month> global 1

# increase player stats
$scoreboard players add $(username) votes 1
$scoreboard players add $(username) monthly_votes 1
$scoreboard players add $(username) yearly_votes 1
$scoreboard players operation $(username) reward_credits += <vote_credits_rewarded> global
$execute unless entity $(username) if data storage pandamium.db.players:data username_indexes."$(username)" run scoreboard players add $(username) offline_votes 1

# if online
$execute as $(username) at @s run function pandamium:player/on_vote/as_player

# update place on voting leaderboards (unless blocked)
$execute if score $(username) playtime_ticks matches 0.. run function pandamium:impl/leaderboards/update_user_place/main {username:"$(username)",type:"total_votes"}
$execute if score $(username) playtime_ticks matches 0.. run function pandamium:impl/leaderboards/update_user_place/main {username:"$(username)",type:"monthly_votes"}
$execute if score $(username) playtime_ticks matches 0.. run function pandamium:impl/leaderboards/update_user_place/main {username:"$(username)",type:"yearly_votes"}
$execute if score $(username) playtime_ticks matches 0.. run function pandamium:misc/leaderboards/refresh_holograms

# advancement progress
$function pandamium:misc/update_rank_advancement_progress/from_username {username:"$(username)"}
