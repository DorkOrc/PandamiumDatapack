scoreboard players operation <source_id> variable = @s id

execute as @a[scores={staff_perms=1..}] run function pandamium:triggers/jail/print_menu/as_player
execute as @a[sort=furthest,scores={staff_perms=0}] run function pandamium:triggers/jail/print_menu/as_player
