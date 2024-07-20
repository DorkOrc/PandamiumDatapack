execute as @a[predicate=pandamium:player/has_staff_rank,sort=nearest] run function pandamium:triggers/staff_menu/print_menu/as_player
execute as @a[predicate=!pandamium:player/has_staff_rank,sort=furthest] run function pandamium:triggers/staff_menu/print_menu/as_player
