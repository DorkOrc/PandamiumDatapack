execute store result score <id> variable run data get storage pandamium:temp leaderboards.old[-1].id

execute unless score <id> variable = <self_id> variable store result score <value> variable run data get storage pandamium:temp leaderboards.old[-1].value
execute unless score <id> variable = <self_id> variable if score <value> variable >= <self_value> variable if score <placed> variable matches 0 store success score <placed> variable run data modify storage pandamium:temp leaderboards.new prepend from storage pandamium:temp leaderboards.self
execute unless score <id> variable = <self_id> variable run data modify storage pandamium:temp leaderboards.new prepend from storage pandamium:temp leaderboards.old[-1]

data remove storage pandamium:temp leaderboards.old[-1]

execute if data storage pandamium:temp leaderboards.old[0] run function pandamium:misc/leaderboards/insert/loop
