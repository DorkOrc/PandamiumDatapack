function pandamium:impl/leaderboards/get_self
execute store result storage pandamium:temp leaderboards.self.value int 1 run scoreboard players operation <self_value> variable = @s monthly_playtime_ticks

scoreboard players operation <ticks> variable = @s monthly_playtime_ticks
function pandamium:utils/get/time_from_ticks_without_days
data modify storage pandamium:temp leaderboards.self.time set from storage pandamium:temp time

data modify storage pandamium:temp leaderboards.old set from storage pandamium:leaderboards monthly_playtime
function pandamium:impl/leaderboards/insert/main
data modify storage pandamium:leaderboards monthly_playtime set from storage pandamium:temp leaderboards.new
