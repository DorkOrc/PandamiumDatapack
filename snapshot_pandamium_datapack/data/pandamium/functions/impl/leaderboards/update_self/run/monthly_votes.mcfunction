function pandamium:impl/leaderboards/get_self
execute store result storage pandamium:temp leaderboards.self.value int 1 run scoreboard players operation <self_value> variable = @s monthly_votes

data modify storage pandamium:temp leaderboards.old set from storage pandamium:leaderboards monthly_votes
function pandamium:impl/leaderboards/insert/main
data modify storage pandamium:leaderboards monthly_votes set from storage pandamium:temp leaderboards.new
