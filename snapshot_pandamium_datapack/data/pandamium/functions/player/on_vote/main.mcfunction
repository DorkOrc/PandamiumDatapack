# Ran by external program
# input: username

$execute if score $(username) playtime_ticks matches 0.. run tellraw @a [{"text":"[Info] ","color":"blue"},{"text":"$(username)","color":"aqua"},{"text":" got ","color":"green"},{"text":"one vote credit","color":"aqua"},{"text":" for voting!","color":"green"}]
$execute as $(username) at @s run function pandamium:player/on_vote/as_player
$scoreboard players add $(username) votes 1
$scoreboard players add $(username) monthly_votes 1
$scoreboard players add $(username) vote_credits 1
