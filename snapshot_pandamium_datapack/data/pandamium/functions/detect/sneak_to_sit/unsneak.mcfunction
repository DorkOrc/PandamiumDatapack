execute if score @s detect.sneak_to_sit_time matches 1073741824..1073741830 run scoreboard players set @s detect.sneak_to_sit_time 0
execute if score @s detect.sneak_to_sit_time matches 1073741831..2147483647 run scoreboard players set @s detect.sneak_to_sit_time 20

execute if score @s detect.sneak_to_sit_time matches -2147483646..-2147483642 run function pandamium:misc/sit
execute if score @s detect.sneak_to_sit_time matches -2147483646..-1073741825 run scoreboard players set @s detect.sneak_to_sit_time 20
