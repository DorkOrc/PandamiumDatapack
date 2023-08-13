scoreboard players operation <home> variable = @s namehome
scoreboard players set <do_rename> variable 0
execute if score <home> variable matches ..-1 store success score <do_rename> variable run scoreboard players operation <home> variable *= #-1 constant
execute unless score <home> variable matches 1..10 run return run tellraw @s [{"text":"[Homes]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]

# restrictions
execute if score @s jailed matches 1.. run return run tellraw @s [{"text":"[Homes]","color":"dark_red"},{"text":" You cannot use this trigger in jail!","color":"red"}]
execute if score @s parkour.checkpoint matches 0.. run return run tellraw @s [{"text":"[Homes]","color":"dark_red"},{"text":" You cannot use this trigger currently!","color":"red"}]

# run
data modify storage pandamium:temp arguments set value {}
execute store result storage ns:temp arguments.home int 1 run scoreboard players get <home> variable
execute in pandamium:staff_world run function pandamium:triggers/namehome/try_name with storage ns:temp arguments
