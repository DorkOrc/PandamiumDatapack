data modify block 3 0 0 front_text.messages[0] set value '{"text":""}'

execute store result score <max_index> variable if data storage pandamium:text characters[]
scoreboard players remove <max_index> variable 1


scoreboard players set <index> variable 0
execute if data storage pandamium:text characters[0] in pandamium:staff_world run function pandamium:impl/font/custom_fonts/rainbow/loop
function pandamium:impl/font/custom_fonts/reapply_root_attributes/main