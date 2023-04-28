scoreboard players set <returned> variable 0
tag @s add source

execute if score @s spawnpoint matches 1.. at @s run function pandamium:impl/triggers/spawnpoint/run_positive_input
execute if score @s spawnpoint matches ..-1 at @s run function pandamium:impl/triggers/spawnpoint/run_negative_input

tag @a remove target
tag @s remove source
scoreboard players reset @s spawnpoint
scoreboard players enable @s spawnpoint
