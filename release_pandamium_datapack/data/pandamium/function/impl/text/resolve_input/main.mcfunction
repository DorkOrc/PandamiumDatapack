execute in pandamium:staff_world run data modify block 3 0 0 front_text.messages[0] set value '{"text":""}'
execute in pandamium:staff_world run data modify block 3 0 0 front_text.messages[0] set from storage pandamium:text input
execute in pandamium:staff_world run data modify storage pandamium:text input set from block 3 0 0 front_text.messages[0]
