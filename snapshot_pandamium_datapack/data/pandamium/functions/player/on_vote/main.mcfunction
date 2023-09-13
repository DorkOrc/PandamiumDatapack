# Ran by external program
# input: username

$execute if score $(username) playtime_ticks matches 0.. if score <vote_credits_rewarded> global matches 1 run tellraw @a [{"text":"[Voting] ","color":"blue"},{"text":"$(username)","color":"aqua"},{"text":" got ","color":"green"},{"text":"1 reward credit","color":"aqua"},{"text":" for voting!","color":"green"}]
$execute if score $(username) playtime_ticks matches 0.. unless score <vote_credits_rewarded> global matches 1 run tellraw @a [{"text":"[Voting] ","color":"blue"},{"text":"$(username)","color":"aqua"},{"text":" got ","color":"green"},[{"score":{"name":"<vote_credits_rewarded>","objective":"global"},"color":"aqua"}," reward credits"],{"text":" for voting!","color":"green"}]

$execute as $(username) at @s run function pandamium:player/on_vote/as_player
$scoreboard players add $(username) votes 1
$scoreboard players add $(username) monthly_votes 1
$scoreboard players operation $(username) vote_credits += <vote_credits_rewarded> global

# log blocked voting message
$execute unless score $(username) playtime_ticks matches 0.. run tellraw @a[scores={staff_perms=1..}] [{"text":"[Staff Info]","color":"dark_gray"},[{"text":" Blocked vote message from ","color":"gray"},{"text":"$(username)","color":"yellow"},"!"]]

# update place on voting leaderboards (unless blocked)
$execute if score $(username) playtime_ticks matches 0.. run function pandamium:impl/leaderboards/update_user_place/main {type:"monthly_votes",value_provider:"monthly_votes",username:"$(username)"}
