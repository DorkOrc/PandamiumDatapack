# Menu
execute if score @s leaderboards matches 1.. run tellraw @s [{"text":"======== ","color":"aqua"},{"text":"Leaderboards","bold":true}," ========\n",[{"text":" ","color":"green"},{"text":"[All-Time Playtime]","color":"aqua","hoverEvent":{"action":"show_text","value":[{"text":"Click to display ","color":"aqua"},{"text":"All-Time\nPlaytime","bold":true}," leaderboard"]},"clickEvent":{"action":"run_command","value":"/trigger leaderboards set -1"}},"  |  ",{"text":"[All-Time Votes]","color":"aqua","hoverEvent":{"action":"show_text","value":[{"text":"Click to display ","color":"aqua"},{"text":"All-Time Votes","bold":true},"\nleaderboard"]},"clickEvent":{"action":"run_command","value":"/trigger leaderboards set -2"}},"\n ",{"text":"[Monthly Playtime]","color":"dark_aqua","hoverEvent":{"action":"show_text","value":[{"text":"Click to display ","color":"dark_aqua"},{"text":"Monthly\nPlaytime","bold":true}," leaderboard"]},"clickEvent":{"action":"run_command","value":"/trigger leaderboards set -3"}},"  |  ",{"text":"[Monthly Votes]","color":"dark_aqua","hoverEvent":{"action":"show_text","value":[{"text":"Click to display ","color":"dark_aqua"},{"text":"Monthly Votes","bold":true},"\nleaderboard"]},"clickEvent":{"action":"run_command","value":"/trigger leaderboards set -4"}},"\n ",{"text":"[Caves & Cliffs Parkour]","color":"blue","hoverEvent":{"action":"show_text","value":[{"text":"Click to display ","color":"blue"},{"text":"Caves & Cliffs\nParkour","bold":true}," leaderboard"]},"clickEvent":{"action":"run_command","value":"/trigger leaderboards set -101"}},"  |  ",{"text":"[Monstrosity Parkour]","color":"blue","hoverEvent":{"action":"show_text","value":[{"text":"Click to display ","color":"blue"},{"text":"Monstrosity\nParkour","bold":true}," leaderboard"]},"clickEvent":{"action":"run_command","value":"/trigger leaderboards set -102"}}],"\n==============================="]

# Leaderboards 
execute if score @s leaderboards matches -1 run function pandamium:impl/leaderboards/display/playtime
execute if score @s leaderboards matches -2 run function pandamium:impl/leaderboards/display/votes
execute if score @s leaderboards matches -3 run function pandamium:impl/leaderboards/display/monthly_playtime
execute if score @s leaderboards matches -4 run function pandamium:impl/leaderboards/display/monthly_votes

execute if score @s leaderboards matches -101 run function pandamium:impl/leaderboards/display/parkour_1
execute if score @s leaderboards matches -102 run function pandamium:impl/leaderboards/display/parkour_2

scoreboard players reset @s leaderboards
scoreboard players enable @s leaderboards
