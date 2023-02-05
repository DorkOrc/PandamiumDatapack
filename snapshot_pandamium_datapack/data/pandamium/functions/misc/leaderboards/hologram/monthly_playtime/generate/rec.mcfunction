scoreboard players remove <num> variable 1

execute store result score <decimal> variable run data get storage pandamium:temp hologram.leaderboard[-1].time[2] 100
scoreboard players operation <decimal> variable /= #60 constant

execute in pandamium:staff_world run data modify block 0 0 0 Text1 set value '[{"text":"(","color":"aqua"},{"score":{"name":"<num>","objective":"variable"},"bold":true},") ",{"nbt":"hologram.leaderboard[-1].display_name","storage":"pandamium:temp","interpret":true}," - ",[{"nbt":"hologram.leaderboard[-1].time[3]","storage":"pandamium:temp","interpret":true,"color":"green","bold":true},".",{"score":{"name":"<decimal>","objective":"variable"}}]]'
execute in pandamium:staff_world run data modify entity @s CustomName set from block 0 0 0 Text1

data remove storage pandamium:temp hologram.leaderboard[-1]
execute unless data storage pandamium:temp hologram.leaderboard[0] on passengers run function pandamium:misc/leaderboards/hologram/monthly_playtime/generate/header
execute if data storage pandamium:temp hologram.leaderboard[0] on passengers run function pandamium:misc/leaderboards/hologram/monthly_playtime/generate/rec
