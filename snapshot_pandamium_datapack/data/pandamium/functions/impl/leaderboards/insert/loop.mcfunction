execute store result score <id> variable run data get storage pandamium:temp leaderboards.old[-1].id
execute unless score <id> variable = <self_id> variable run function pandamium:impl/leaderboards/insert/loop/unless_id_matches

data remove storage pandamium:temp leaderboards.old[-1]
execute if data storage pandamium:temp leaderboards.old[0] run function pandamium:impl/leaderboards/insert/loop
