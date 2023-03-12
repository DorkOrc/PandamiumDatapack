# input: score <cost> variable
execute store success score <can_buy> variable if score @s vote_credits >= <cost> variable
execute if score <can_buy> variable matches 0 run tellraw @s [{"text":"[Vote Shop]","color":"dark_red"},{"text":" You do not have enough vote credits!","color":"red"}]
execute if score <can_buy> variable matches 1 run scoreboard players operation @s vote_credits -= <cost> variable
execute if score <can_buy> variable matches 1 run tellraw @s [{"text":"","color":"green"},{"text":"[Vote Shop]","color":"dark_green"},{"text":" Purchase successful","color":"aqua"},"! You now have ",{"score":{"name":"@s","objective":"vote_credits"},"bold":true,"color":"aqua"}," vote credit",{"text":"(s)","color":"gray"},"! ",[{"text":"(-","color":"red"},{"score":{"objective":"variable","name":"<cost>"},"bold":true},")"]]
