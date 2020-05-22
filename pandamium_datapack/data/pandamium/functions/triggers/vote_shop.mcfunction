execute if score @s vote_shop matches 1 run scoreboard players add @s vote_credits 0
execute if score @s vote_shop matches 1 run tellraw @s [{"text":"Vote shop: ","color":"aqua"},{"text":"You currently have ","color":"green"},{"score":{"name":"@s","objective":"vote_credits"},"color":"aqua"},{"text":" credits\n","color":"green"},{"text":"[1] ","color":"green"},{"text":"1 Diamond","color":"aqua"},{"text":" [Buy for 3 credits]\n","color":"green","clickEvent":{"action":"run_command","value":"/trigger vote_shop set -1"}},{"text":"[2] ","color":"green"},{"text":"1 Golden Apple","color":"aqua"},{"text":" [Buy for 1 credit]\n","color":"green","clickEvent":{"action":"run_command","value":"/trigger vote_shop set -2"}},{"text":"[3] ","color":"green"},{"text":"5 Experience Bottles","color":"aqua"},{"text":" [Buy for 1 credit]\n","color":"green","clickEvent":{"action":"run_command","value":"/trigger vote_shop set -3"}},{"text":"[4] ","color":"green"},{"text":"Endermite Egg","color":"aqua"},{"text":" [Buy for 1 credit]\n","color":"green","clickEvent":{"action":"run_command","value":"/trigger vote_shop set -4"}},{"text":"[5] ","color":"green"},{"text":"Mending Book","color":"aqua"},{"text":" [Buy for 25 credits]\n","color":"green","clickEvent":{"action":"run_command","value":"/trigger vote_shop set -5"}},{"text":"[6] ","color":"green"},{"text":"Enchanted Golden Apple","color":"aqua"},{"text":" [Buy for 50 credits]\n","color":"green","clickEvent":{"action":"run_command","value":"/trigger vote_shop set -6"}},{"text":"[7] ","color":"green"},{"text":"Random Head of Online Player","color":"aqua"},{"text":" [Buy for 20 credits]\n","color":"green","clickEvent":{"action":"run_command","value":"/trigger vote_shop set -7"}},{"text":"[8] ","color":"green"},{"text":"Your Head","color":"aqua"},{"text":" [Buy for 100 credits]\n","color":"green","clickEvent":{"action":"run_command","value":"/trigger vote_shop set -8"}},{"text":"[9] ","color":"green"},{"text":"Home Cooldown Reset","color":"aqua"},{"text":" [Buy for 1 credit]\n","color":"green","clickEvent":{"action":"run_command","value":"/trigger vote_shop set -9"}},{"text":"[10] ","color":"green"},{"text":"TPA Cooldown Reset","color":"aqua"},{"text":" [Buy for 1 credit]","color":"green","clickEvent":{"action":"run_command","value":"/trigger vote_shop set -10"}}]

execute if score @s vote_shop matches -1 if score @s vote_credits matches 3.. run give @s minecraft:diamond
execute if score @s vote_shop matches -1 if score @s vote_credits matches 3.. run scoreboard players remove @s vote_credits 3

execute if score @s vote_shop matches -2 if score @s vote_credits matches 1.. run give @s minecraft:golden_apple
execute if score @s vote_shop matches -2 if score @s vote_credits matches 1.. run scoreboard players remove @s vote_credits 1

execute if score @s vote_shop matches -3 if score @s vote_credits matches 1.. run give @s minecraft:experience_bottle 5
execute if score @s vote_shop matches -3 if score @s vote_credits matches 1.. run scoreboard players remove @s vote_credits 1

execute if score @s vote_shop matches -4 if score @s vote_credits matches 1.. run give @s minecraft:endermite_spawn_egg{EntityTag:{PlayerSpawned:1b}}
execute if score @s vote_shop matches -4 if score @s vote_credits matches 1.. run scoreboard players remove @s vote_credits 1

execute if score @s vote_shop matches -5 if score @s vote_credits matches 25.. run give @s minecraft:enchanted_book{StoredEnchantments:[{id:"minecraft:mending",lvl:1}]}
execute if score @s vote_shop matches -5 if score @s vote_credits matches 25.. run scoreboard players remove @s vote_credits 25

execute if score @s vote_shop matches -6 if score @s vote_credits matches 50.. run give @s minecraft:enchanted_golden_apple
execute if score @s vote_shop matches -6 if score @s vote_credits matches 50.. run scoreboard players remove @s vote_credits 50

execute if score @s vote_shop matches -7 if score @s vote_credits matches 20.. at @s as @r run loot give @p loot pandamium:head
execute if score @s vote_shop matches -7 if score @s vote_credits matches 20.. run scoreboard players remove @s vote_credits 20

execute if score @s vote_shop matches -8 if score @s vote_credits matches 100.. run loot give @s loot pandamium:head
execute if score @s vote_shop matches -8 if score @s vote_credits matches 100.. run scoreboard players remove @s vote_credits 100

execute if score @s vote_shop matches -9 if score @s vote_credits matches 1.. run scoreboard players set @s home_cooldown 0
execute if score @s vote_shop matches -9 if score @s vote_credits matches 1.. run scoreboard players remove @s vote_credits 1

execute if score @s vote_shop matches -10 if score @s vote_credits matches 1.. run scoreboard players set @s tpa_cooldown 0
execute if score @s vote_shop matches -10 if score @s vote_credits matches 1.. run scoreboard players remove @s vote_credits 1

scoreboard players reset @s vote_shop
scoreboard players enable @s vote_shop
