execute if score @s vote_shop matches 1 run scoreboard players add @s vote_credits 0
execute if score @s vote_shop matches 1 run tellraw @s [{"text":"[Pandamium]","color":"dark_blue"},{"text":" Vote shop: ","color":"aqua"},{"text":"You currently have ","color":"green"},{"score":{"name":"@s","objective":"vote_credits"},"color":"aqua"},{"text":" credits\n","color":"green"},{"text":"[1] ","color":"green"},{"text":"1 Diamond","color":"aqua"},{"text":" [Buy for 3 credits]\n","color":"green","clickEvent":{"action":"run_command","value":"/trigger vote_shop set -1"}},{"text":"[2] ","color":"green"},{"text":"1 Golden Apple","color":"aqua"},{"text":" [Buy for 1 credit]\n","color":"green","clickEvent":{"action":"run_command","value":"/trigger vote_shop set -2"}},{"text":"[3] ","color":"green"},{"text":"5 Experience Bottles","color":"aqua"},{"text":" [Buy for 1 credit]\n","color":"green","clickEvent":{"action":"run_command","value":"/trigger vote_shop set -3"}},{"text":"[4] ","color":"green"},{"text":"Mending Book","color":"aqua"},{"text":" [Buy for 25 credits]\n","color":"green","clickEvent":{"action":"run_command","value":"/trigger vote_shop set -4"}},{"text":"[4] ","color":"green"},{"text":"Home Cooldown Reset","color":"aqua"},{"text":" [Buy for 1 credit]\n","color":"green","clickEvent":{"action":"run_command","value":"/trigger vote_shop set -5"}}]

execute if score @s vote_shop matches -1 if score @s vote_credits matches 3.. run give @s minecraft:diamond
execute if score @s vote_shop matches -1 if score @s vote_credits matches 3.. run scoreboard players remove @s vote_credits 3

execute if score @s vote_shop matches -2 if score @s vote_credits matches 1.. run give @s minecraft:golden_apple
execute if score @s vote_shop matches -2 if score @s vote_credits matches 1.. run scoreboard players remove @s vote_credits 1

execute if score @s vote_shop matches -3 if score @s vote_credits matches 1.. run give @s minecraft:experience_bottle 5
execute if score @s vote_shop matches -3 if score @s vote_credits matches 1.. run scoreboard players remove @s vote_credits 1

execute if score @s vote_shop matches -4 if score @s vote_credits matches 25.. run give @s minecraft:enchanted_book{StoredEnchantments:[{id:"minecraft:mending",lvl:1}]}
execute if score @s vote_shop matches -4 if score @s vote_credits matches 25.. run scoreboard players remove @s vote_credits 25

execute if score @s vote_shop matches -5 if score @s vote_credits matches 1.. run scoreboard players set @s home_cooldown 0
execute if score @s vote_shop matches -5 if score @s vote_credits matches 1.. run scoreboard players remove @s vote_credits 1

scoreboard players reset @s vote_shop
scoreboard players enable @s vote_shop