execute store result score <value> variable run data get storage pandamium:leaderboards votes[-1].value
execute if score @s votes >= <value> variable run function pandamium:impl/leaderboards/update_self/run/votes
