scoreboard players set <returned> variable 0
tag @s add source

execute if score <returned> variable matches 0 if score @s spawnpoint matches -1 run scoreboard players operation @s spawnpoint = @a[scores={staff_perms=0},distance=..200,limit=1] id
execute if score <returned> variable matches 0 if score @s spawnpoint matches -1 store success score <returned> variable run tellraw @s [{"text":"[Spawnpoint]","color":"dark_red"},{"text":" Could not find a non-staff player nearby!","color":"red"}]

execute if score <returned> variable matches 0 if score @s spawnpoint matches 1.. at @s run function pandamium:impl/triggers/spawnpoint/run_positive_input
execute if score <returned> variable matches 0 if score @s spawnpoint matches ..-2 at @s run function pandamium:impl/triggers/spawnpoint/run_negative_input

tag @a remove target
tag @s remove source
scoreboard players reset @s spawnpoint
scoreboard players enable @s spawnpoint
