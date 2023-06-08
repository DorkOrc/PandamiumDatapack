# `pandamium:impl/leaderboards/get_self/...` should already have been run

execute store result score <value> variable run data get storage pandamium:temp leaderboards.old[-1].value
execute store result score <id> variable run data get storage pandamium:temp leaderboards.old[-1].id

scoreboard players set <on_leaderboard> variable 0
execute if score <self_value> variable > <value> variable run scoreboard players set <on_leaderboard> variable 1
execute if score <self_value> variable = <value> variable if score <self_id> variable < <id> variable run scoreboard players set <on_leaderboard> variable 1

#

execute if score <on_leaderboard> variable matches 0 run data modify storage pandamium:temp leaderboards.new set from storage pandamium:temp leaderboards.old
execute if score <on_leaderboard> variable matches 1 run function pandamium:impl/leaderboards/insert/is_on_leaderboard
