execute if score @s detect.sneak_to_sit_time matches 2..12 run scoreboard players set @s detect.sneak_to_sit_time -2147483648
execute if score @s detect.sneak_to_sit_time matches 13..1073741823 unless score @s detect.sneak_to_sit_time matches 536870912..536870927 run scoreboard players set @s detect.sneak_to_sit_time 1073741824
