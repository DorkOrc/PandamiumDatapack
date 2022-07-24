execute store result score <value> variable run data get storage pandamium:leaderboards monthly_votes[-1].value
execute if score <value> variable >= @s monthly_votes run function pandamium:misc/leaderboards/update_self/run/monthly_votes
