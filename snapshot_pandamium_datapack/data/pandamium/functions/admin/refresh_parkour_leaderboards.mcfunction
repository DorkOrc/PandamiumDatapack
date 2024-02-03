execute if data storage pandamium:queue entries[{action:"leaderboards.refresh.end"}] run tellraw @s [{"text":"[admin/refresh_all_leaderboards]","color":"dark_red"},{"text":" A leaderboard refresh is already taking place!","color":"red"}]
execute if data storage pandamium:queue entries[{action:"leaderboards.refresh.end"}] run return fail

tellraw @s [{"text":"[admin/refresh_all_leaderboards]","color":"dark_green"},{"text":" Started leaderboard refresh!","color":"green"}]
function pandamium:impl/leaderboards/refresh_parkour_leaderboards
