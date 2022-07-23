function pandamium:misc/leaderboards/get_self
execute store result storage pandamium:temp leaderboards.self.value int 1 run scoreboard players operation <self_value> variable = @s votes

data modify storage pandamium:temp leaderboards.old set from storage pandamium:leaderboards votes
function pandamium:misc/leaderboards/insert/main
data modify storage pandamium:leaderboards votes set from storage pandamium:temp leaderboards.new
