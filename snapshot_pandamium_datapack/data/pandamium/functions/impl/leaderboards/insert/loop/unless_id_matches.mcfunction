execute if score <placed> variable matches 0 run function pandamium:impl/leaderboards/insert/loop/unless_placed_self
data modify storage pandamium:temp leaderboards.new prepend from storage pandamium:temp leaderboards.old[-1]
