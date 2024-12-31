# Ran by external program
# arguments: username, service

# increase server stats
scoreboard players add <votes_this_month> global 1

# increase player stats
$function pandamium:utils/database/players/load/from_username {username:"$(username)"}
execute store success score <username_in_database> variable if data storage pandamium.db.players:io selected

$scoreboard players add $(username) votes 1
$scoreboard players add $(username) monthly_votes 1
$scoreboard players add $(username) yearly_votes 1
$scoreboard players operation $(username) reward_credits += <vote_credits_rewarded> global
$execute if score <username_in_database> variable matches 1 unless entity $(username) run scoreboard players add $(username) offline_votes 1

# handle streaks
scoreboard players set <do_voting_streaks> variable 1
execute unless score <year> global matches 2025.. unless score <dev_environment> global matches 1 run scoreboard players set <do_voting_streaks> variable 0

scoreboard players set <previous_length_in_days> variable 0
scoreboard players set <length_in_days> variable 0
execute if score <do_voting_streaks> variable matches 1 if score <username_in_database> variable matches 1 run function pandamium:player/on_vote/handle_voting_streak
# score <previous_length_in_days> variable -> ?, score <length_in_days> variable -> ?
# also saves and deselects players db entry

# announce vote (unless hidden)
execute unless score <length_in_days> variable matches 3.. run scoreboard players set <do_voting_streaks> variable 0
execute unless score <length_in_days> variable > <previous_length_in_days> variable run scoreboard players set <do_voting_streaks> variable 0
$execute if score <username_in_database> variable matches 1 if score $(username) hide_voting_announcements matches 1 run tellraw @a[scores={staff_perms=1..}] ["",{"text":"[Staff Info]","color":"dark_gray","hoverEvent":{"action":"show_text","contents":"service-name: $(service)"}},[{"text":" Hidden vote message from $(service) for ","color":"gray"},{"text":"$(username)","color":"green"},"!"]]
$execute if score <username_in_database> variable matches 1 unless score $(username) hide_voting_announcements matches 1 if score <do_voting_streaks> variable matches 0 run tellraw @a ["",{"text":"[Voting] ","color":"blue","hoverEvent":{"action":"show_text","contents":"service-name: $(service)"}},[{"text":"","color":"green"},{"text":"$(username)","color":"aqua"}," voted",{"storage":"pandamium:dictionary","nbt":"votifier_service_sentence_end.'$(service)'","interpret":true},"! ",{"text":"(+","extra":[{"score":{"name":"<vote_credits_rewarded>","objective":"global"},"bold":true},"Ⓒ)"],"color":"dark_green","hoverEvent":{"action":"show_text","contents":{"text":"This player received ","extra":[{"score":{"name":"<vote_credits_rewarded>","objective":"global"}}," reward credit(s) for casting a vote for Pandamium on one of the 5 registered voting websites!"],"color":"dark_green"}}}]]
$execute if score <username_in_database> variable matches 1 unless score $(username) hide_voting_announcements matches 1 if score <do_voting_streaks> variable matches 1 run tellraw @a ["",{"text":"[Voting] ","color":"blue","hoverEvent":{"action":"show_text","contents":"service-name: $(service)"}},[{"text":"","color":"green"},{"text":"$(username)","color":"aqua"}," voted",{"storage":"pandamium:dictionary","nbt":"votifier_service_sentence_end.'$(service)'","interpret":true},"! ",{"text":"(+","extra":[{"score":{"name":"<vote_credits_rewarded>","objective":"global"},"bold":true},"Ⓒ)"],"color":"dark_green","hoverEvent":{"action":"show_text","contents":{"text":"This player received ","extra":[{"score":{"name":"<vote_credits_rewarded>","objective":"global"}}," reward credit(s) for casting a vote for Pandamium on one of the 5 registered voting websites!"],"color":"dark_green"}}},{"text":" 🔥","extra":[{"score":{"name":"<length_in_days>","objective":"variable"},"bold":true}],"color":"#D4006F","shadow_color":[0.376,0,0.467,0.5]}]]

# log blocked voting message
$execute unless score $(username) playtime_ticks matches 0.. run tellraw @a[scores={staff_perms=1..}] ["",{"text":"[Staff Info]","color":"dark_gray","hoverEvent":{"action":"show_text","contents":"service-name: $(service)"}},[{"text":" Blocked vote message from $(service) for ","color":"gray"},{"text":"$(username)","color":"yellow"},"!"]]

# if online
$execute as $(username) at @s run function pandamium:player/on_vote/as_player

# update place on voting leaderboards (unless blocked)
$execute if score <username_in_database> variable matches 1 run function pandamium:impl/leaderboards/update_user_place/main {username:"$(username)",type:"total_votes"}
$execute if score <username_in_database> variable matches 1 run function pandamium:impl/leaderboards/update_user_place/main {username:"$(username)",type:"monthly_votes"}
$execute if score <username_in_database> variable matches 1 run function pandamium:impl/leaderboards/update_user_place/main {username:"$(username)",type:"yearly_votes"}
execute if score <username_in_database> variable matches 1 run function pandamium:misc/leaderboards/refresh_holograms

# advancement progress
$function pandamium:misc/update_rank_advancement_progress/from_username {username:"$(username)"}
