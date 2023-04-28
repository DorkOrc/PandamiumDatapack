execute if score @s sneak_to_sit_timer matches 2..12 run scoreboard players set @s sneak_to_sit_timer -2147483648
execute if score @s sneak_to_sit_timer matches 13..1073741823 unless score @s sneak_to_sit_timer matches 536870912..536870927 run scoreboard players set @s sneak_to_sit_timer 1073741824
