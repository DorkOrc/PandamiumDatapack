#> Check Conditions
execute unless predicate pandamium:holding_anything run tellraw @s [{"text":"[Mail]","color":"dark_red"},{"text":" You must be holding a Book and Quill to send mail!","color":"red"}]
execute unless predicate pandamium:holding_anything run return fail

execute if predicate pandamium:holding_anything_in_mainhand in pandamium:staff_world run item replace block 5 0 0 container.0 from entity @s weapon.mainhand
execute unless predicate pandamium:holding_anything_in_mainhand in pandamium:staff_world run item replace block 5 0 0 container.0 from entity @s weapon.offhand
data remove storage pandamium:temp item
execute in pandamium:staff_world run data modify storage pandamium:temp item set from block 5 0 0 item
execute unless data storage pandamium:temp item{id:"minecraft:writable_book"} run tellraw @s [{"text":"[Mail]","color":"dark_red"},{"text":" You must be holding a Book and Quill to send mail!","color":"red"}]
execute unless data storage pandamium:temp item{id:"minecraft:writable_book"} run return fail

#> Send Mail
# create
execute store result score <confirm_input_value> variable run function pandamium:utils/database/mail/load_new
scoreboard players add <confirm_input_value> variable 1000000
execute store result storage pandamium:templates macro.value.value int 1 run scoreboard players operation <confirm_input_value> variable *= #-1 constant

# set sender
execute store result storage pandamium:templates macro.id.id int 1 run scoreboard players get @s id
function pandamium:utils/database/mail/modify/add_sender_from_id with storage pandamium:templates macro.id

# set receiver
execute store result storage pandamium:templates macro.id.id int 1 run scoreboard players get @s mail
function pandamium:utils/database/mail/modify/add_receiver_from_id with storage pandamium:templates macro.id

# flatten message
execute if data storage pandamium:temp item{id:"minecraft:written_book"} in pandamium:staff_world run data modify block 3 0 0 front_text.messages[0] set value '{"storage":"pandamium:temp","nbt":"item.tag.pages[0]","interpret":true}'
execute if data storage pandamium:temp item{id:"minecraft:writable_book"} in pandamium:staff_world run data modify block 3 0 0 front_text.messages[0] set value '{"storage":"pandamium:temp","nbt":"item.tag.pages[0]"}'
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

execute unless data storage pandamium.db:mail selected.entry.title run data modify storage pandamium:temp display_title set value '["",{"italic":true,"text":"Untitled Mail"},{"text":" ","underlined":false},{"text":"ℹ","color":"blue","underlined":false,"hoverEvent":{"action":"show_text","contents":["",{"text":"To set a title, write a heading using markdown on the first line. For example:","color":"gray"},"\\n\\n# Title Goes Here\\nMessage goes here..."]}}]'
data modify storage pandamium:temp display_title set from storage pandamium.db:mail selected.entry.data.title

# set message
execute in pandamium:staff_world run data modify block 3 0 0 front_text.messages[0] set value '{"storage":"pandamium:text","nbt":"lines[]","separator":"\\n"}'
execute in pandamium:staff_world run data modify storage pandamium.db:mail selected.entry.data.message set from block 3 0 0 front_text.messages[0]

# set preview
execute store result score <message_length> variable run data get storage pandamium:text lines[0]
execute if score <message_length> variable matches 0..5 run tellraw @s [{"text":"[Mail]","color":"dark_red"},{"text":" Message too short! The contents of the message must be at least 6 characters long.","color":"red"}]
execute if score <message_length> variable matches 0..5 run return fail

execute if score <message_length> variable matches 21.. run data modify storage pandamium:text output set string storage pandamium:text lines[0] 0 16
execute if score <message_length> variable matches 6..20 run data modify storage pandamium:text output set string storage pandamium:text lines[0] 0 -5
execute if score <message_length> variable matches 1..5 run data modify storage pandamium:text output set string storage pandamium:text lines[0] 0 1
execute if score <message_length> variable matches 1.. in pandamium:staff_world run data modify block 3 0 0 front_text.messages[0] set value '[{"storage":"pandamium:text","nbt":"output"},"..."]'
#execute if score <message_length> variable matches 0 in pandamium:staff_world run data modify block 3 0 0 front_text.messages[0] set value '{"text":"No preview available","color":"red"}'

execute in pandamium:staff_world run data modify storage pandamium.db:mail selected.entry.data.preview set from block 3 0 0 front_text.messages[0]

#> Output Message
execute store result storage pandamium:templates macro.id.id int 1 run scoreboard players get @s mail
function pandamium:utils/get/display_name/from_id with storage pandamium:templates macro.id

tellraw @s [{"text":"======== ","color":"aqua"},{"text":"Mail","bold":true}," ========"]

tellraw @s "PREPARING TO SEND\n"

tellraw @s ["",{"text":"Title: ","color":"gray"},{"storage":"pandamium:temp","nbt":"display_title","interpret":true,"underlined":true}," ",{"text":"\nMessage:\n","color":"gray"},{"storage":"pandamium.db:mail","nbt":"selected.entry.data.message","interpret":true},{"text":"\nTo: ","color":"gray"},[{"text":"","color":"aqua"},{"storage":"pandamium:temp","nbt":"display_name","interpret":true}]]

function pandamium:triggers/mail/create_mail/print_confirm_button with storage pandamium:templates macro.value

tellraw @s {"text":"==================================","color":"aqua"}

# save
function pandamium:utils/database/mail/save
