execute store result score <value> variable run data get storage pandamium:leaderboards monthly_votes[-1].value
execute if score @s monthly_votes >= <value> variable run function pandamium:misc/leaderboards/update_self/run/monthly_votes
execute if score @s monthly_votes >= <value> variable run function pandamium:misc/leaderboards/update_hologram/monthly_votes
