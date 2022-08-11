# Menu
execute if score @s leaderboards.chat_test matches 1.. run tellraw @s [{"text":"======== ","color":"aqua"},{"text":"Chat Leaderboards","bold":true}," ========\n",[{"text":" ","color":"green"},{"text":"[Top Playtime]","color":"aqua","hoverEvent":{"action":"show_text","value":[{"text":"Click to display ","color":"aqua"},{"text":"Top Playtime","bold":true}," leaderboard"]},"clickEvent":{"action":"run_command","value":"/trigger leaderboards.chat_test set -1"}},"  |  ",{"text":"[Top Votes]","color":"aqua","hoverEvent":{"action":"show_text","value":[{"text":"Click to display ","color":"aqua"},{"text":"Top Votes","bold":true}," leaderboard"]},"clickEvent":{"action":"run_command","value":"/trigger leaderboards.chat_test set -2"}},"\n ",{"text":"[Monthly Playtime]","color":"dark_aqua","hoverEvent":{"action":"show_text","value":[{"text":"Click to display ","color":"dark_aqua"},{"text":"Monthly Playtime","bold":true}," leaderboard"]},"clickEvent":{"action":"run_command","value":"/trigger leaderboards.chat_test set -3"}},"  |  ",{"text":"[Monthly Votes]","color":"dark_aqua","hoverEvent":{"action":"show_text","value":[{"text":"Click to display ","color":"dark_aqua"},{"text":"Monthly Votes","bold":true}," leaderboard"]},"clickEvent":{"action":"run_command","value":"/trigger leaderboards.chat_test set -4"}},"\n ",{"text":"[Caves & Cliffs Parkour]","color":"blue","hoverEvent":{"action":"show_text","value":[{"text":"Click to display ","color":"aqua"},{"text":"Caves & Cliffs Parkour","bold":true}," leaderboard"]},"clickEvent":{"action":"run_command","value":"/trigger leaderboards.chat_test set -101"}},"  |  ",{"text":"[Monstrosity Parkour]","color":"blue","hoverEvent":{"action":"show_text","value":[{"text":"Click to display ","color":"aqua"},{"text":"Monstrosity Parkour","bold":true}," leaderboard"]},"clickEvent":{"action":"run_command","value":"/trigger leaderboards.chat_test set -102"}}],"\n==============================="]

# Leaderboards 
execute if score @s leaderboards.chat_test matches -1 run function pandamium:misc/leaderboards/display/playtime
execute if score @s leaderboards.chat_test matches -2 run function pandamium:misc/leaderboards/display/votes
execute if score @s leaderboards.chat_test matches -3 run function pandamium:misc/leaderboards/display/monthly_playtime
execute if score @s leaderboards.chat_test matches -4 run function pandamium:misc/leaderboards/display/monthly_votes

execute if score @s leaderboards.chat_test matches -101 run function pandamium:misc/leaderboards/display/parkour_1
execute if score @s leaderboards.chat_test matches -102 run function pandamium:misc/leaderboards/display/parkour_2

scoreboard players reset @s leaderboards.chat_test
scoreboard players enable @s leaderboards.chat_test
