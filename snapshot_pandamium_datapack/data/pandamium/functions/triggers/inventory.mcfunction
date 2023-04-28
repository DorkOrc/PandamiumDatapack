scoreboard players set <returned> variable 0
tag @s add source

execute if score @s inventory matches 1.. at @s run function pandamium:impl/triggers/inventory/run_positive_input
execute if score @s inventory matches ..-1 at @s run function pandamium:impl/triggers/inventory/run_negative_input

tag @a remove target
tag @s remove source
scoreboard players reset @s inventory
scoreboard players enable @s inventory
