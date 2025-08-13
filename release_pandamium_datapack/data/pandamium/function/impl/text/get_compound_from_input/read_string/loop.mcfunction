# arguments: front, back

$data modify storage pandamium:temp reading_char set string storage pandamium:text input $(front) $(back)
execute if data storage pandamium:temp {reading_char:'"'} run return 0

execute if data storage pandamium:temp {reading_char:'\\'} run function pandamium:impl/text/get_compound_from_input/read_string/escape_character/main with storage pandamium:templates macro.front__back__start

execute store result storage pandamium:templates macro.front__back__start.front int 1 run scoreboard players add <front> variable 1
execute store result storage pandamium:templates macro.front__back__start.back int 1 run scoreboard players add <back> variable 1
function pandamium:impl/text/get_compound_from_input/read_string/loop with storage pandamium:templates macro.front__back__start
