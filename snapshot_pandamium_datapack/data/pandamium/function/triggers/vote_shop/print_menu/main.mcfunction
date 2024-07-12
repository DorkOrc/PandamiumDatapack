scoreboard players set <has_printed_menu> variable 0

scoreboard players add @s reward_credits 0

execute if score @s rewards_shop matches 1 run function pandamium:triggers/vote_shop/print_menu/misc

execute if score <has_printed_menu> variable matches 0 run tellraw @s [{"text":"[Rewards Shop]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]
