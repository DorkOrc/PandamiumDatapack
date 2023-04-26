scoreboard players set <returned> variable 0
tag @s add source

execute if score @s homes matches 1.. at @s run function pandamium:impl/triggers/homes/run_positive_input
execute if score @s homes matches ..-1 at @s run function pandamium:impl/triggers/homes/run_negative_input

tag @a remove target
tag @s remove source
scoreboard players reset @s homes
scoreboard players enable @s homes
