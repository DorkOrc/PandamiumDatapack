team leave @a
execute as @a run function pandamium:player/ranks/update_team/normal

execute store result score <source_is_guest> variable if score @s gameplay_perms matches 0
scoreboard players operation <source_id> variable = @s id

execute as @a[scores={staff_perms=1..}] run function pandamium:triggers/staff_menu/print_menu/entry
execute as @a[sort=furthest,scores={staff_perms=0}] run function pandamium:triggers/staff_menu/print_menu/entry

execute as @a run function pandamium:player/ranks/update_team
