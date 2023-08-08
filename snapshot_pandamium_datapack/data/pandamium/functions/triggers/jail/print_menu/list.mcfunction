team leave @a
execute as @a run function pandamium:player/ranks/force_team/normal

scoreboard players operation <source_id> variable = @s id

execute as @a[scores={staff_perms=1..}] run function pandamium:triggers/jail/print_menu/entry
execute as @a[sort=furthest,scores={staff_perms=0}] run function pandamium:triggers/jail/print_menu/entry

execute as @a run function pandamium:player/ranks/update_team
