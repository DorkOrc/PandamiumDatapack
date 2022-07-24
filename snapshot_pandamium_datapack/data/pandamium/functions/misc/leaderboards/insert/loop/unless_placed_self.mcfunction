execute store result score <value> variable run data get storage pandamium:temp leaderboards.old[-1].value
execute if score <value> variable > <self_value> variable store success score <placed> variable run data modify storage pandamium:temp leaderboards.new prepend from storage pandamium:temp leaderboards.self
execute if score <value> variable == <self_value> variable if score <id> variable < <self_id> variable store success score <placed> variable run data modify storage pandamium:temp leaderboards.new prepend from storage pandamium:temp leaderboards.self
