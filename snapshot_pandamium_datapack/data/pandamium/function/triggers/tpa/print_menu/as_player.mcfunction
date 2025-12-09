execute if predicate pandamium:player/is_vanished unless score @a[tag=source,limit=1] staff_rank matches 2.. run return fail

execute if score @s id = <source_id> variable run return fail
execute if predicate pandamium:player/is_jailed run return run function pandamium:triggers/tpa/print_menu/fail
execute if score @s disable_tpa_requests matches 1 run return run function pandamium:triggers/tpa/print_menu/fail
execute if score @s disable_tpa_requests matches 2 if score <source_is_guest> variable matches 1 run return run function pandamium:triggers/tpa/print_menu/fail
execute unless score @s id matches 2.. run return run function pandamium:triggers/tpa/print_menu/fail

execute store result storage pandamium:local functions."pandamium:triggers/tpa/*".id int 1 run scoreboard players get @s id
function pandamium:triggers/tpa/print_menu/success with storage pandamium:local functions."pandamium:triggers/tpa/*"
