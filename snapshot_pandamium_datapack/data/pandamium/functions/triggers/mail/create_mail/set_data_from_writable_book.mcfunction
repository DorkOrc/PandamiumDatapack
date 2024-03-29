
# flatten message
execute if data storage pandamium:temp item{id:"minecraft:written_book"} in pandamium:staff_world run data modify block 3 0 0 front_text.messages[0] set value '{"storage":"pandamium:temp","nbt":"item.components.\\"minecraft:written_book_content\\".pages[0].text","interpret":true}'
execute if data storage pandamium:temp item{id:"minecraft:writable_book"} in pandamium:staff_world run data modify block 3 0 0 front_text.messages[0] set value '{"storage":"pandamium:temp","nbt":"item.components.\\"minecraft:writable_book_content\\".pages[0].text"}'
execute in pandamium:staff_world run data modify storage pandamium:text input set from block 3 0 0 front_text.messages[0]
function pandamium:utils/text/flatten_json/inclusive

# set title
data remove storage pandamium:temp first_line_data
data modify storage pandamium:temp first_line_data.sliced set string storage pandamium:text lines[0] 2
data modify storage pandamium:temp first_line_data.prefix set string storage pandamium:text lines[0] 0 2
data modify storage pandamium:temp first_line_data.3rd_char set string storage pandamium:text lines[0] 2 3

execute in pandamium:staff_world run data modify block 3 0 0 front_text.messages[0] set value '""'
execute if data storage pandamium:temp first_line_data{prefix:"# "} unless data storage pandamium:temp first_line_data{3rd_char:" "} in pandamium:staff_world run data modify block 3 0 0 front_text.messages[0] set value '{"storage":"pandamium:temp","nbt":"first_line_data.sliced"}'
execute in pandamium:staff_world run data modify storage pandamium.db:mail selected.entry.data.title set from block 3 0 0 front_text.messages[0]
execute if data storage pandamium:temp first_line_data{prefix:"# "} unless data storage pandamium:temp first_line_data{3rd_char:" "} run data remove storage pandamium:text lines[0]
execute if data storage pandamium.db:mail selected.entry.data{title:'""'} run data remove storage pandamium.db:mail selected.entry.data.title

# set message
execute in pandamium:staff_world run data modify block 3 0 0 front_text.messages[0] set value '{"storage":"pandamium:text","nbt":"lines[]","separator":"\\n"}'
execute in pandamium:staff_world run data modify storage pandamium.db:mail selected.entry.data.message set from block 3 0 0 front_text.messages[0]

# set preview
execute store result score <message_length> variable run data get storage pandamium:text lines[0]
execute if score <message_length> variable matches 0..5 run tellraw @s [{"text":"[Mail]","color":"dark_red"},{"text":" Your message is too short! The contents of the message must be at least 6 characters long.","color":"red"}]
execute if score <message_length> variable matches 0..5 run return 0

execute if score <message_length> variable matches 21.. run data modify storage pandamium:text output set string storage pandamium:text lines[0] 0 16
execute if score <message_length> variable matches 6..20 run data modify storage pandamium:text output set string storage pandamium:text lines[0] 0 -5
execute if score <message_length> variable matches 1..5 run data modify storage pandamium:text output set string storage pandamium:text lines[0] 0 1
execute if score <message_length> variable matches 1.. in pandamium:staff_world run data modify block 3 0 0 front_text.messages[0] set value '[{"storage":"pandamium:text","nbt":"output"},"..."]'
#execute if score <message_length> variable matches 0 in pandamium:staff_world run data modify block 3 0 0 front_text.messages[0] set value '{"text":"No preview available","color":"red"}'

execute in pandamium:staff_world run data modify storage pandamium.db:mail selected.entry.data.preview set from block 3 0 0 front_text.messages[0]

return 1
