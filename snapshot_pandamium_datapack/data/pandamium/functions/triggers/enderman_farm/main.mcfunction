scoreboard players set <returned> variable 0
tag @s add source

execute if score @s enderman_farm matches 1.. at @s run function pandamium:triggers/enderman_farm/run_positive_input
execute if score @s enderman_farm matches ..-1 at @s run function pandamium:triggers/enderman_farm/run_negative_input

tag @a remove target
tag @s remove source
scoreboard players reset @s enderman_farm
scoreboard players enable @s enderman_farm
