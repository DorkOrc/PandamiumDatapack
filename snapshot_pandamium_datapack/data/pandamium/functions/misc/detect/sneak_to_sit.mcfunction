execute if predicate pandamium:sneak if score @s detect.sneak_to_sit_time matches 2..12 run scoreboard players set @s detect.sneak_to_sit_time -2147483648
execute if predicate pandamium:sneak if score @s detect.sneak_to_sit_time matches 1.. run scoreboard players set @s detect.sneak_to_sit_time 0
execute unless predicate pandamium:sneak if score @s detect.sneak_to_sit_time matches -2147483646..-2147483642 if data entity @s {OnGround:1b} run function pandamium:misc/sit
execute unless predicate pandamium:sneak if score @s detect.sneak_to_sit_time matches -2147483646..-1 run scoreboard players set @s detect.sneak_to_sit_time 1

advancement revoke @s only pandamium:detect/sneak_to_sit
