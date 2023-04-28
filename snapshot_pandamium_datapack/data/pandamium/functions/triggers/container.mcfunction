scoreboard players set <returned> variable 0
tag @s add source

execute if score @s container matches 1.. at @s run function pandamium:impl/triggers/container/run_positive_input
execute if score @s container matches ..-1 at @s run function pandamium:impl/triggers/container/run_negative_input

tag @a remove target
tag @s remove source
scoreboard players reset @s container
scoreboard players enable @s container
