function pandamium:utils/triggers/disable_player_suffixes
scoreboard players set <returned> variable 0
tag @s add source

execute if score @s enderchest matches 1.. at @s run function pandamium:triggers/enderchest/run_positive_input
execute if score @s enderchest matches ..-1 at @s run function pandamium:triggers/enderchest/run_negative_input

tag @a remove target
tag @s remove source
scoreboard players reset @s enderchest
scoreboard players enable @s enderchest
