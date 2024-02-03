scoreboard players set <returned> variable 0
tag @s add source

execute if score @s inspect_container matches 1.. at @s run function pandamium:triggers/inspect_container/run_positive_input
execute if score @s inspect_container matches ..-1 at @s run function pandamium:triggers/inspect_container/run_negative_input

tag @a remove target
tag @s remove source
scoreboard players reset @s inspect_container
scoreboard players enable @s inspect_container
