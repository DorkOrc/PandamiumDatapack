execute store result score <value> variable run data get storage pandamium:leaderboards monthly_playtime[-1].value
execute if score <value> variable >= @s monthly_playtime_ticks run function pandamium:misc/leaderboards/update_self/run/monthly_playtime
