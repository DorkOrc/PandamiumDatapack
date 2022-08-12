function pandamium:misc/leaderboards/get_self
scoreboard players operation <self_value> variable = @s parkour_1.best_time
execute store result storage pandamium:temp leaderboards.self.value int 1 run scoreboard players operation <self_value> variable *= <-1> variable

scoreboard players operation <ticks> variable = @s parkour_1.best_time
function pandamium:misc/get_time_from_ticks_without_hours
data modify storage pandamium:temp leaderboards.self.time set from storage pandamium:temp time

data modify storage pandamium:temp leaderboards.old set from storage pandamium:leaderboards parkour_1
function pandamium:misc/leaderboards/insert/main
data modify storage pandamium:leaderboards parkour_1 set from storage pandamium:temp leaderboards.new
