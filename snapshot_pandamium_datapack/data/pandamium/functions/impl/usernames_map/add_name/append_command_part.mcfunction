# arguments: index, value

$data modify storage pandamium:temp command_parts."$(index)" set value "$(value)"
execute store result storage pandamium:templates macro.index__value.index int 1 run scoreboard players add <command_parts.next_index> variable 1
