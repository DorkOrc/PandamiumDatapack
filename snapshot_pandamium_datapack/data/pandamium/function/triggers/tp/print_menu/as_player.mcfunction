execute if predicate pandamium:player/is_vanished unless score @a[tag=source,limit=1] staff_rank matches 2.. run return fail

execute store result storage pandamium:templates macro.id.id int 1 run scoreboard players get @s id
function pandamium:triggers/tp/print_menu/entry with storage pandamium:templates macro.id
