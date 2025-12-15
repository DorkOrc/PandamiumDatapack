execute as @a[predicate=pandamium:player/min_staff_perms/helper,sort=nearest] run function pandamium:triggers/staff_menu/print_menu/as_player
execute as @a[predicate=!pandamium:player/min_staff_perms/helper,sort=furthest] run function pandamium:triggers/staff_menu/print_menu/as_player
