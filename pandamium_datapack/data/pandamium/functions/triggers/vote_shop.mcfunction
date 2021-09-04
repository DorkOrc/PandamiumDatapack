tag @s add running_trigger

execute if score @s vote_shop matches 1.. run function pandamium:misc/vote_shop/print_menu

execute if score @s vote_shop matches ..-1 run function pandamium:misc/vote_shop/buy_vote_shop_reward

tag @s remove running_trigger
scoreboard players reset @s vote_shop
scoreboard players enable @s vote_shop
