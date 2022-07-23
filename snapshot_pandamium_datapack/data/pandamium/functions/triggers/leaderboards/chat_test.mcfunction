scoreboard players set <returned> variable 0 

execute store success score <returned> variable if score @s leaderboards.chat_test matches 2 run function pandamium:misc/leaderboards/display/playtime
execute if score <returned> variable matches 0 store success score <returned> variable if score @s leaderboards.chat_test matches 3 run function pandamium:misc/leaderboards/display/votes
execute if score <returned> variable matches 0 store success score <returned> variable if score @s leaderboards.chat_test matches 4 run function pandamium:misc/leaderboards/display/monthly_playtime
execute if score <returned> variable matches 0 store success score <returned> variable if score @s leaderboards.chat_test matches 5 run function pandamium:misc/leaderboards/display/monthly_votes

execute if score <returned> variable matches 0 run tellraw @s [{"text":"","color":"green"},{"text":"[leaderboards.chat_test]\n","color":"blue"},{"text":"/trigger leaderboards.chat_test set","color":"gray"},{"text":" 2","color":"yellow"}," -> ",{"text":"playtime","color":"aqua"},"\n",{"text":"/trigger leaderboards.chat_test set","color":"gray"},{"text":" 3","color":"yellow"}," -> ",{"text":"votes","color":"aqua"},"\n",{"text":"/trigger leaderboards.chat_test set","color":"gray"},{"text":" 4","color":"yellow"}," -> ",{"text":"monthly_playtime","color":"aqua"},"\n",{"text":"/trigger leaderboards.chat_test set","color":"gray"},{"text":" 5","color":"yellow"}," -> ",{"text":"monthly_votes","color":"aqua"}]

scoreboard players reset @s leaderboards.chat_test
scoreboard players enable @s leaderboards.chat_test
