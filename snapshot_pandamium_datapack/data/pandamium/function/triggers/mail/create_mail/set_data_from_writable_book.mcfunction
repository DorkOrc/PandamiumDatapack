# flatten message
execute if data storage pandamium:temp item{id:"minecraft:written_book"} run data modify storage pandamium:text input set from storage pandamium:temp item.components.minecraft:written_book_content.pages[0].raw
execute if data storage pandamium:temp item{id:"minecraft:writable_book"} run data modify storage pandamium:text input set from storage pandamium:temp item.components.minecraft:writable_book_content.pages[0].raw

# set title
function pandamium:triggers/mail/create_mail/strip_beginning/loop
data remove storage pandamium:temp first_line_data
data modify storage pandamium:temp first_line_data.sliced set string storage pandamium:text lines[0] 2
data modify storage pandamium:temp first_line_data.prefix set string storage pandamium:text lines[0] 0 2
data modify storage pandamium:temp first_line_data.3rd_char set string storage pandamium:text lines[0] 2 3

execute if data storage pandamium:temp first_line_data{prefix:"# "} unless data storage pandamium:temp first_line_data{3rd_char:" "} unless data storage pandamium:temp first_line_data{3rd_char:"‌"} unless data storage pandamium:temp first_line_data{sliced:""} run data modify storage pandamium.db.mail:io selected.entry.data.title set from storage pandamium:temp first_line_data.sliced
execute if data storage pandamium:temp first_line_data{prefix:"# "} unless data storage pandamium:temp first_line_data{3rd_char:" "} unless data storage pandamium:temp first_line_data{3rd_char:"‌"} unless data storage pandamium:temp first_line_data{sliced:""} run data remove storage pandamium:text lines[0]

# set message
function pandamium:triggers/mail/create_mail/strip_beginning/loop
function pandamium:triggers/mail/create_mail/strip_end/loop

execute unless data storage pandamium:text lines[0] run data remove storage pandamium.db.mail:io selected.entry.data.preview
execute unless data storage pandamium:text lines[0] run data remove storage pandamium.db.mail:io selected.entry.data.message

execute unless data storage pandamium:text lines[0] run return 1
execute in pandamium:staff_world run loot replace block 5 0 0 contents loot {pools:[{rolls:1,entries:[{type:"minecraft:item",name:"minecraft:stone"}]}],functions:[{function:"minecraft:set_name",entity:"this",name:{storage:"pandamium:text",nbt:"lines[]",separator:"\n"}}]}
execute in pandamium:staff_world run data modify storage pandamium.db.mail:io selected.entry.data.message set from block 5 0 0 item.components.minecraft:custom_name

# set preview
execute store result score <message_length> variable run data get storage pandamium:text lines[0]
execute if score <message_length> variable matches 21.. run data modify storage pandamium:text output set string storage pandamium:text lines[0] 0 20
execute if score <message_length> variable matches 6..20 run data modify storage pandamium:text output set string storage pandamium:text lines[0] 0 -5
execute if score <message_length> variable matches 1..5 run data modify storage pandamium:text output set string storage pandamium:text lines[0] 0 1
execute if score <message_length> variable matches 1 run data modify storage pandamium:text output set value ""

execute in pandamium:staff_world run loot replace block 5 0 0 contents loot {pools:[{rolls:1,entries:[{type:"minecraft:item",name:"minecraft:stone"}]}],functions:[{function:"minecraft:set_name",entity:"this",name:{storage:"pandamium:text",nbt:"output"}}]}
execute in pandamium:staff_world run data modify storage pandamium.db.mail:io selected.entry.data.preview set from block 5 0 0 item.components.minecraft:custom_name

return 1
