execute store result score <value> variable run data get storage pandamium:leaderboards votes[-1].value
execute if score <value> variable >= @s votes run function pandamium:misc/leaderboards/update_self/run/votes
