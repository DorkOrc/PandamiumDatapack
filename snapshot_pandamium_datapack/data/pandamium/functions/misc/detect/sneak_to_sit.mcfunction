# [1..12]: after first crouch; waiting for second crouch (will set to -2147483648 if you crouch during this time)
# [13..1073741823 or 1073741835..]: after first crouch; second crouch took too long (will set to 0 if you crouch during this time)

# [-2147483646..-2147483642]: after second crouch; waiting to uncrouch before sitting (will sit if you uncrouch during this time)
# [-2147483643..-1073741825]: after second crouch; crouched for too long (will reset to 1 once you uncrouch during this time)

# [-1073741819..-1]: is currently sitting (will set to 1073741824 if you dismount during this time)
# [1073741824..2147483642]: after dismount; 15 tick sit cooldown (to prevent spamming shift pushing you through the floor)

execute if predicate pandamium:sneak if score @s detect.sneak_to_sit_time matches 2..12 run scoreboard players set @s detect.sneak_to_sit_time -2147483648
execute if predicate pandamium:sneak if score @s detect.sneak_to_sit_time matches 1.. unless score @s detect.sneak_to_sit_time matches 1073741824..1073741839 run scoreboard players set @s detect.sneak_to_sit_time 0
execute unless predicate pandamium:sneak if score @s detect.sneak_to_sit_time matches -2147483646..-2147483642 if predicate pandamium:can_sit run function pandamium:misc/sit
execute unless predicate pandamium:sneak if score @s detect.sneak_to_sit_time matches -2147483646..-1073741825 run scoreboard players set @s detect.sneak_to_sit_time 1

advancement revoke @s only pandamium:detect/sneak_to_sit
