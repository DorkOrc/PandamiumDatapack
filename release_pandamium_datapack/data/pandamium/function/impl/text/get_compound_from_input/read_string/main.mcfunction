data modify storage pandamium:temp stack append value {type:"string",value:"",lines:[]}

execute store result storage pandamium:templates macro.front__back__start.front int 1 run scoreboard players set <front> variable 0
execute store result storage pandamium:templates macro.front__back__start.back int 1 run scoreboard players set <back> variable 1
execute store result storage pandamium:templates macro.front__back__start.start int 1 run scoreboard players set <start> variable 0

function pandamium:impl/text/get_compound_from_input/read_string/loop with storage pandamium:templates macro.front__back__start

function pandamium:impl/text/get_compound_from_input/read_string/append_string with storage pandamium:templates macro.front__back__start
