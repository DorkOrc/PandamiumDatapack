# print selection menu
execute if score @s leaderboards matches 1.. run return run function pandamium:triggers/leaderboards/print_menu

# print leaderboards
execute if score @s leaderboards matches -7..-1 run tellraw @s [{color:"aqua",text:"======== "},{bold:true,text:"Leader Boards"}," ========"]

execute if score @s leaderboards matches -1 run function pandamium:utils/leader_board/print_leader_board/total_playtime
execute if score @s leaderboards matches -2 run function pandamium:utils/leader_board/print_leader_board/total_votes
execute if score @s leaderboards matches -3 run function pandamium:utils/leader_board/print_leader_board/monthly_playtime
execute if score @s leaderboards matches -4 run function pandamium:utils/leader_board/print_leader_board/monthly_votes
execute if score @s leaderboards matches -5 run function pandamium:utils/leader_board/print_leader_board/yearly_playtime
execute if score @s leaderboards matches -6 run function pandamium:utils/leader_board/print_leader_board/yearly_votes
execute if score @s leaderboards matches -7 run function pandamium:utils/leader_board/print_leader_board/parkour_3
#execute if score @s leaderboards matches -8 run return run function pandamium:utils/leader_board/print_leader_board/parkour_3_deathless

execute if score @s leaderboards matches -7..-1 run return run tellraw @s {color:"aqua",text:"================================"}

# else
tellraw @s [{text:"[Leader Boards]",color:"dark_red"},{text:" That is not a valid option!",color:"red"}]
