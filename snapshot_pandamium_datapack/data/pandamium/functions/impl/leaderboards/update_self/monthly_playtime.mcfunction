execute store result score <value> variable run data get storage pandamium:leaderboards monthly_playtime[-1].value
execute if score @s monthly_playtime_ticks >= <value> variable run function pandamium:impl/leaderboards/update_self/run/monthly_playtime
