execute if score @s sneak_to_sit_timer matches 1073741824..1073741830 run scoreboard players set @s sneak_to_sit_timer 0
execute if score @s sneak_to_sit_timer matches 1073741831..2147483647 run scoreboard players set @s sneak_to_sit_timer 20

execute if score @s sneak_to_sit_timer matches -2147483646..-2147483642 run function pandamium:misc/sit/main
execute if score @s sneak_to_sit_timer matches -2147483646..-1073741825 run scoreboard players set @s sneak_to_sit_timer 20
