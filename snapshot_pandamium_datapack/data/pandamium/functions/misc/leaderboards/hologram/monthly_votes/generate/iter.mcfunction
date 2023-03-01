scoreboard players add <n> variable 1

data modify block 0 0 0 Text1 set value '[{"text":"(","color":"aqua"},{"score":{"name":"<n>","objective":"variable"},"bold":true},") ",{"nbt":"hologram.leaderboard[0].display_name","storage":"pandamium:temp","interpret":true}," - ",[{"nbt":"hologram.leaderboard[0].value","storage":"pandamium:temp","interpret":true,"color":"green","bold":true}]]'

execute if data storage pandamium:temp hologram.leaderboard[0].id run data modify storage pandamium:temp hologram.lines append from block 0 0 0 Text1

data remove storage pandamium:temp hologram.leaderboard[0]
execute if score <n> variable < <max> variable if data storage pandamium:temp hologram.leaderboard[0] run function pandamium:misc/leaderboards/hologram/monthly_votes/generate/iter
