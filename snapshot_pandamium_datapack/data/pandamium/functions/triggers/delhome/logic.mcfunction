scoreboard players operation <home> variable = @s delhome
scoreboard players set <do_replace> variable 0
execute if score <home> variable matches ..-1 store success score <do_replace> variable run scoreboard players operation <home> variable *= #-1 constant
execute unless score <home> variable matches 1..10 run tellraw @s [{"text":"[Homes]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]
execute unless score <home> variable matches 1..10 run return 0

# restrictions
execute if score @s jailed matches 1.. run tellraw @s [{"text":"[Homes]","color":"dark_red"},{"text":" You cannot use this trigger in jail!","color":"red"}]
execute if score @s jailed matches 1.. run return 0
execute if score @s parkour.checkpoint matches 0.. run tellraw @s [{"text":"[Homes]","color":"dark_red"},{"text":" You cannot use this trigger currently!","color":"red"}]
execute if score @s parkour.checkpoint matches 0.. run return 0

# run
execute store result storage pandamium:templates macro.home.home int 1 run scoreboard players get <home> variable
function pandamium:triggers/delhome/try_delete with storage pandamium:templates macro.home
