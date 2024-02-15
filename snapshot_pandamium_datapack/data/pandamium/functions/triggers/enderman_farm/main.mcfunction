execute if score @s enderman_farm matches 1.. run function pandamium:triggers/enderman_farm/run_positive_input
execute if score @s enderman_farm matches ..-1 run function pandamium:triggers/enderman_farm/run_negative_input

scoreboard players reset @s enderman_farm
scoreboard players enable @s enderman_farm
