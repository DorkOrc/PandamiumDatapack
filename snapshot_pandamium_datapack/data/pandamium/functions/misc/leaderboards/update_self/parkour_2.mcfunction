execute store result score <value> variable run data get storage pandamium:leaderboards parkour_2[-1].value
execute if score @s parkour_2.best_time >= <value> variable run function pandamium:misc/leaderboards/update_self/run/parkour_2
