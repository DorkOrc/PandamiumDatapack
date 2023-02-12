scoreboard players add <n> variable 1

execute store result score <decimal> variable run data get storage pandamium:temp hologram.leaderboard[0].time[2] 1.6666667
execute if score <decimal> variable matches 10.. run data modify block 0 0 0 Text1 set value '[{"text":"(","color":"aqua"},{"score":{"name":"<n>","objective":"variable"},"bold":true},") ",{"nbt":"hologram.leaderboard[0].display_name","storage":"pandamium:temp","interpret":true}," - ",[{"nbt":"hologram.leaderboard[0].time[3]","storage":"pandamium:temp","interpret":true,"color":"green","bold":true},".",{"score":{"name":"<decimal>","objective":"variable"}}]]'
execute if score <decimal> variable matches 0..9 run data modify block 0 0 0 Text1 set value '[{"text":"(","color":"aqua"},{"score":{"name":"<n>","objective":"variable"},"bold":true},") ",{"nbt":"hologram.leaderboard[0].display_name","storage":"pandamium:temp","interpret":true}," - ",[{"nbt":"hologram.leaderboard[0].time[3]","storage":"pandamium:temp","interpret":true,"color":"green","bold":true},".0",{"score":{"name":"<decimal>","objective":"variable"}}]]'

data modify storage pandamium:temp hologram.lines append from block 0 0 0 Text1

data remove storage pandamium:temp hologram.leaderboard[0]
execute if score <n> variable < <max> variable if data storage pandamium:temp hologram.leaderboard[0] run function pandamium:misc/leaderboards/hologram/monthly_playtime/generate/iter
