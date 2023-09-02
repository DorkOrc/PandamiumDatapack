# Ran by external program
# input: username

$execute if score $(username) playtime_ticks matches 0.. run tellraw @a [{"text":"[Voting] ","color":"blue"},{"text":"$(username)","color":"aqua"},{"text":" got ","color":"green"},{"text":"one vote credit","color":"aqua"},{"text":" for voting!","color":"green"}]
$execute as $(username) at @s run function pandamium:player/on_vote/as_player
$scoreboard players add $(username) votes 1
$scoreboard players add $(username) monthly_votes 1
$scoreboard players add $(username) vote_credits 1

# log blocked voting message
$execute unless score $(username) playtime_ticks matches 0.. run tellraw @a[scores={send_extra_debug_info=1..}] [{"text":"[Voting: Blocked vote message from ","color":"gray","italic":true},{"text":"$(username)","color":"yellow"},"]"]

# update place on voting leaderboards (unless blocked)
$execute unless score $(username) playtime_ticks matches 0.. run function pandamium:impl/leaderboards/update_user_place/main {type:"monthly_votes",value_provider:"monthly_votes",username:"$(username)"}
