execute store result score <value> variable run data get storage pandamium:leaderboards parkour_1[-1].value
execute if score @s parkour_1.best_time >= <value> variable unless score @s parkour.leaderboard_blacklist matches 1 run function pandamium:misc/leaderboards/update_self/run/parkour_1
