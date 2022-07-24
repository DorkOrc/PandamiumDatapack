# Menu
execute if score @s leaderboards.chat_test matches 1.. run tellraw @s [{"text":"======== ","color":"aqua"},{"text":"Leaderboards (chat test)","bold":true}," ========\n",[{"text":"1: ","color":"green"},{"text":"[Top Playtime]","color":"aqua","hoverEvent":{"action":"show_text","value":[{"text":"Click to display ","color":"aqua"},{"text":"Top Playtime","bold":true}," leaderboard"]},"clickEvent":{"action":"run_command","value":"/trigger leaderboards.chat_test set -1"}}],"  ",[{"text":"2: ","color":"green"},{"text":"[Top Votes]","color":"aqua","hoverEvent":{"action":"show_text","value":[{"text":"Click to display ","color":"aqua"},{"text":"Top Votes","bold":true}," leaderboard"]},"clickEvent":{"action":"run_command","value":"/trigger leaderboards.chat_test set -2"}}],"\n",[{"text":"3: ","color":"green"},{"text":"[Monthly Playtime]","color":"dark_aqua","hoverEvent":{"action":"show_text","value":[{"text":"Click to display ","color":"dark_aqua"},{"text":"Monthly Playtime","bold":true}," leaderboard"]},"clickEvent":{"action":"run_command","value":"/trigger leaderboards.chat_test set -3"}}],"  ",[{"text":"4: ","color":"green"},{"text":"[Monthly Votes]","color":"dark_aqua","hoverEvent":{"action":"show_text","value":[{"text":"Click to display ","color":"dark_aqua"},{"text":"Monthly Votes","bold":true}," leaderboard"]},"clickEvent":{"action":"run_command","value":"/trigger leaderboards.chat_test set -4"}}],"\n==============================="]

# Leaderboards 
execute if score @s leaderboards.chat_test matches -1 run function pandamium:misc/leaderboards/display/playtime
execute if score @s leaderboards.chat_test matches -2 run function pandamium:misc/leaderboards/display/votes
execute if score @s leaderboards.chat_test matches -3 run function pandamium:misc/leaderboards/display/monthly_playtime
execute if score @s leaderboards.chat_test matches -4 run function pandamium:misc/leaderboards/display/monthly_votes

scoreboard players reset @s leaderboards.chat_test
scoreboard players enable @s leaderboards.chat_test
