execute store result score <value> variable run data get storage pandamium:leaderboards playtime[-1].value
execute if score @s playtime_ticks >= <value> variable run function pandamium:impl/leaderboards/update_self/run/playtime
