execute store result score <value> variable run data get storage pandamium:leaderboards playtime[-1].value
execute if score <value> variable >= @s playtime_ticks run function pandamium:misc/leaderboards/update_self/run/playtime
