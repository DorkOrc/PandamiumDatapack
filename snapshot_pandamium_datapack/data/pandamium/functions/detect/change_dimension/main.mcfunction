execute in the_end positioned 100 49 0 if entity @s[distance=..1] run function pandamium:impl/queue/append/teleport_to_end_platform

xp add @s 0

scoreboard players reset @s selected_block.x
scoreboard players reset @s selected_block.y
scoreboard players reset @s selected_block.z

advancement revoke @s only pandamium:detect/change_dimension
