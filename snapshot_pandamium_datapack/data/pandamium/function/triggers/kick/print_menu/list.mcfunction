scoreboard players operation <source_id> variable = @s id

execute as @a[predicate=pandamium:player/min_staff_perms/helper] run function pandamium:triggers/kick/print_menu/as_player
execute as @a[sort=furthest,predicate=!pandamium:player/min_staff_perms/helper] run function pandamium:triggers/kick/print_menu/as_player
