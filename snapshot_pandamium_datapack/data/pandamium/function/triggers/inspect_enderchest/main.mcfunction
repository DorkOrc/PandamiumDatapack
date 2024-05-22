function pandamium:utils/triggers/disable_player_suffixes
scoreboard players set <returned> variable 0
tag @s add source

execute if score @s inspect_enderchest matches 1.. at @s run function pandamium:triggers/inspect_enderchest/run_positive_input
execute if score @s inspect_enderchest matches ..-1 at @s run function pandamium:triggers/inspect_enderchest/run_negative_input

tag @a remove target
tag @s remove source
scoreboard players reset @s inspect_enderchest
scoreboard players enable @s inspect_enderchest
