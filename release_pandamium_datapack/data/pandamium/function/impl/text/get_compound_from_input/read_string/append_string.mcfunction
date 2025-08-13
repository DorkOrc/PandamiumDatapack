# arguments: front, back, start

$data modify storage pandamium:templates macro.value__substring.substring set string storage pandamium:text input $(start) $(front)
execute in pandamium:staff_world run data modify block 3 0 0 front_text.messages[0] set value '{"storage":"pandamium:temp","nbt":"stack[-1].value"}'
execute in pandamium:staff_world run data modify storage pandamium:templates macro.value__substring.value set string block 3 0 0 front_text.messages[0] 1 -1
function pandamium:impl/text/get_compound_from_input/read_string/escape_character/concatenate_substring with storage pandamium:templates macro.value__substring

$data modify storage pandamium:text input set string storage pandamium:text input $(back)
