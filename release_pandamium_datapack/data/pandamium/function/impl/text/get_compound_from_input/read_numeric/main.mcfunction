scoreboard players set <is_float> variable 0

execute store result storage pandamium:templates macro.front__back.front int 1 run scoreboard players set <front> variable 0
execute store result storage pandamium:templates macro.front__back.back int 1 run scoreboard players set <back> variable 1

function pandamium:impl/text/get_compound_from_input/read_numeric/loop with storage pandamium:templates macro.front__back

function pandamium:impl/text/get_compound_from_input/read_numeric/append_numeric with storage pandamium:templates macro.front__back
