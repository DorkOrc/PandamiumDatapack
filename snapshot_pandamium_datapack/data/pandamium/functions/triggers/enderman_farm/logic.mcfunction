execute if score @s jailed matches 1.. run return run tellraw @s [{"text":"[Enderman Farm]","color":"dark_red"},{"text":" You cannot use this trigger in jail!","color":"red"}]

execute if score @s enderman_farm matches 1.. run function pandamium:triggers/enderman_farm/run_positive_input
execute if score @s enderman_farm matches ..-1 run function pandamium:triggers/enderman_farm/run_negative_input
