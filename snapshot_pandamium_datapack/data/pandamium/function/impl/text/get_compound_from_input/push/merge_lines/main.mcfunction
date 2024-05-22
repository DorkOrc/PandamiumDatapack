execute in pandamium:staff_world run data modify block 3 0 0 front_text.messages set value ['{"storage":"pandamium:temp","nbt":"merge_lines[0][-1]"}','{"storage":"pandamium:temp","nbt":"merge_lines[1][0]"}','""','""']
execute in pandamium:staff_world run data modify storage pandamium:templates macro.part_1__part_2.part_1 set string block 3 0 0 front_text.messages[0] 1 -1
execute in pandamium:staff_world run data modify storage pandamium:templates macro.part_1__part_2.part_2 set string block 3 0 0 front_text.messages[1] 1 -1
function pandamium:impl/text/get_compound_from_input/push/merge_lines/concatenate_parts with storage pandamium:templates macro.part_1__part_2
