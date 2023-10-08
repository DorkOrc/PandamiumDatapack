# arguments: front, back

$data modify storage pandamium:temp reading_char set string storage pandamium:text input $(front) $(back)
execute unless data storage pandamium:temp {reading_char:'0'} unless data storage pandamium:temp {reading_char:'1'} unless data storage pandamium:temp {reading_char:'2'} unless data storage pandamium:temp {reading_char:'3'} unless data storage pandamium:temp {reading_char:'4'} unless data storage pandamium:temp {reading_char:'5'} unless data storage pandamium:temp {reading_char:'6'} unless data storage pandamium:temp {reading_char:'7'} unless data storage pandamium:temp {reading_char:'8'} unless data storage pandamium:temp {reading_char:'9'} unless data storage pandamium:temp {reading_char:'-'} unless data storage pandamium:temp {reading_char:'.'} run return 0

execute if data storage pandamium:temp {reading_char:'.'} run scoreboard players set <is_float> variable 1

execute store result storage pandamium:templates macro.front__back.front int 1 run scoreboard players add <front> variable 1
execute store result storage pandamium:templates macro.front__back.back int 1 run scoreboard players add <back> variable 1
function pandamium:impl/text/get_compound_from_input/read_numeric/loop with storage pandamium:templates macro.front__back
