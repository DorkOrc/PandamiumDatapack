# arguments: username

$execute unless data storage pandamium.db.players:data username_indexes."$(username)" run return run tellraw @s [{"text":"[Admin]","color":"dark_red"},{"text":" Could not remove a vote from $(username)! No users with that name exist in the [players] database.","color":"red"}]
$execute unless score $(username) votes matches 1.. run return run tellraw @s [{"text":"[Admin]","color":"dark_red"},{"text":" Could not remove a vote from $(username)! That user does not have any votes to remove.","color":"red"}]

# decrease player stats
$scoreboard players remove $(username) votes 1
$execute unless score $(username) monthly_votes matches ..0 run scoreboard players remove $(username) monthly_votes 1
$execute unless score $(username) yearly_votes matches ..0 run scoreboard players remove $(username) yearly_votes 1

# update place on voting leaderboards (unless blocked)
$execute if score $(username) playtime_ticks matches 0.. run function pandamium:impl/leaderboards/update_user_place/main {username:"$(username)",type:"total_votes"}
$execute if score $(username) playtime_ticks matches 0.. run function pandamium:impl/leaderboards/update_user_place/main {username:"$(username)",type:"monthly_votes"}
$execute if score $(username) playtime_ticks matches 0.. run function pandamium:impl/leaderboards/update_user_place/main {username:"$(username)",type:"yearly_votes"}
$execute if score $(username) playtime_ticks matches 0.. run function pandamium:misc/leaderboards/refresh_holograms

# advancement progress
$function pandamium:misc/update_rank_advancement_progress/from_username {username:"$(username)"}

# feedback
$return run tellraw @s [{"text":"[Admin]","color":"dark_green"},{"text":" Removed 1 vote from $(username)! They now have ","color":"green","extra":[{"score":{"name":"$(username)","objective":"votes"}}," vote(s).\nNeed to remove any of their reward credits? ",{"text":"[Click Here]","color":"aqua","clickEvent":{"action":"suggest_command","value":"/scoreboard players remove $(username) reward_credits 1"}}]}]
