# arguments: front, back, start

$data modify storage pandamium:temp reading_char set string storage pandamium:text input $(back)
data modify storage pandamium:temp reading_char set string storage pandamium:temp reading_char 0 1

execute store result storage pandamium:templates macro.front__back__start.front int 1 run scoreboard players add <front> variable 1
execute store result storage pandamium:templates macro.front__back__start.back int 1 run scoreboard players add <back> variable 1

execute if data storage pandamium:temp {reading_char:'\\'} run return 0
execute if data storage pandamium:temp {reading_char:'"'} run return 0

execute unless data storage pandamium:temp {reading_char:'n'} unless data storage pandamium:temp {reading_char:'t'} run function pandamium:impl/text/get_compound_from_input/raise_error {message:'"Unexpected character while reading string"'}
execute unless data storage pandamium:temp {reading_char:'n'} unless data storage pandamium:temp {reading_char:'t'} run return 0

$data modify storage pandamium:templates macro.value__substring.substring set string storage pandamium:text input $(start) $(front)
execute in pandamium:staff_world run data modify block 3 0 0 front_text.messages[0] set value '{"storage":"pandamium:temp","nbt":"stack[-1].value"}'
execute in pandamium:staff_world run data modify storage pandamium:templates macro.value__substring.value set string block 3 0 0 front_text.messages[0] 1 -1
function pandamium:impl/text/get_compound_from_input/read_string/escape_character/concatenate_substring with storage pandamium:templates macro.value__substring

execute store result storage pandamium:templates macro.front__back__start.start int 1 run scoreboard players operation <start> variable = <back> variable
