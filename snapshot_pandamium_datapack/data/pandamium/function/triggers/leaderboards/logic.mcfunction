# print selection menu
execute if score @s leaderboards matches 1.. run return run function pandamium:triggers/leaderboards/print_menu

# print leaderboards 
execute if score @s leaderboards matches -1 run return run function pandamium:misc/leaderboards/print_leaderboard/total_playtime
execute if score @s leaderboards matches -2 run return run function pandamium:misc/leaderboards/print_leaderboard/total_votes
execute if score @s leaderboards matches -3 run return run function pandamium:misc/leaderboards/print_leaderboard/monthly_playtime
execute if score @s leaderboards matches -4 run return run function pandamium:misc/leaderboards/print_leaderboard/monthly_votes
execute if score @s leaderboards matches -5 run return run function pandamium:misc/leaderboards/print_leaderboard/yearly_playtime
execute if score @s leaderboards matches -6 run return run function pandamium:misc/leaderboards/print_leaderboard/yearly_votes
execute if score @s leaderboards matches -7 run return run function pandamium:misc/leaderboards/print_leaderboard/parkour_3
#execute if score @s leaderboards matches -8 run return run function pandamium:misc/leaderboards/print_leaderboard/parkour_3_deathless

# else
tellraw @s [{"text":"[Leader Boards]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]
