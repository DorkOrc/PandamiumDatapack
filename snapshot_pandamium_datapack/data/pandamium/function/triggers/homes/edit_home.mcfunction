scoreboard players set <home> variable 0
execute store result score <op> variable run scoreboard players operation <home> variable -= @s homes
execute store result storage pandamium:local functions."pandamium:triggers/homes/*".home int 1 run scoreboard players operation <home> variable /= #1000000 constant
scoreboard players operation <op> variable %= #1000000 constant

execute if score <op> variable matches 1 run return run scoreboard players operation @s sethome -= <home> variable
execute if score <op> variable matches 2 run return run scoreboard players operation @s delhome -= <home> variable
execute if score <op> variable matches 3 run return run function pandamium:triggers/homes/delete_name with storage pandamium:local functions."pandamium:triggers/homes/*"

tellraw @s [{text:"[Homes]",color:"dark_red"},{text:" That is not a valid option!",color:"red"}]
scoreboard players reset @s homes
