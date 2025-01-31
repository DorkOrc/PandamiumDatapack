# title
execute store success score <has_title> variable if data storage pandamium.db.mail:io selected.entry.data.title
execute if score <has_title> variable matches 1 run data modify storage pandamium:text input set from storage pandamium.db.mail:io selected.entry.data.title
execute if score <has_title> variable matches 1 run function pandamium:utils/text/update_pre_1_21_5_text_component
execute if score <has_title> variable matches 1 run data modify storage pandamium.db.mail:io selected.entry.data.title set from storage pandamium:text output

# message
execute store success score <has_message> variable if data storage pandamium.db.mail:io selected.entry.data.message
execute if score <has_message> variable matches 1 run data modify storage pandamium:text input set from storage pandamium.db.mail:io selected.entry.data.message
execute if score <has_message> variable matches 1 run function pandamium:utils/text/update_pre_1_21_5_text_component
execute if score <has_message> variable matches 1 if data storage pandamium:text output.text if data storage pandamium:text output.extra[0] unless data storage pandamium:text output.extra[{}] run data modify storage pandamium:text input set from storage pandamium:text output
execute if score <has_message> variable matches 1 if data storage pandamium:text output.text if data storage pandamium:text output.extra[0] unless data storage pandamium:text output.extra[{}] run function pandamium:utils/text/flatten
execute if score <has_message> variable matches 1 run data modify storage pandamium.db.mail:io selected.entry.data.message set from storage pandamium:text output

# preview
execute if score <has_message> variable matches 1 run data modify storage pandamium:text input set from storage pandamium.db.mail:io selected.entry.data.message
execute if score <has_message> variable matches 1 run function pandamium:utils/text/flatten
execute if score <has_message> variable matches 1 store result score <message_length> variable run data get storage pandamium:text output
execute if score <has_message> variable matches 1 if score <message_length> variable matches 31.. run data modify storage pandamium:text input set string storage pandamium:text output 0 30
execute if score <has_message> variable matches 1 unless score <message_length> variable matches 31.. run data modify storage pandamium:text input set from storage pandamium:text output
execute if score <has_message> variable matches 1 unless score <message_length> variable matches 31.. run data modify storage pandamium.db.mail:io selected.entry.data.full_preview set value 1b
execute if score <has_message> variable matches 1 run function pandamium:utils/text/replace {args:["\n"," "]}
execute if score <has_message> variable matches 1 run data modify storage pandamium.db.mail:io selected.entry.data.preview set from storage pandamium:text output

# item 1
data remove storage pandamium.db.mail:io selected.entry.data.items[].fallback_name

execute store success score <has_item> variable if data storage pandamium.db.mail:io selected.entry.data.items[0].name
execute if score <has_item> variable matches 1 run data modify storage pandamium:text input set from storage pandamium.db.mail:io selected.entry.data.items[0].name
execute if score <has_item> variable matches 1 run function pandamium:utils/text/update_pre_1_21_5_text_component
execute if score <has_item> variable matches 1 if data storage pandamium:text output unless data storage pandamium:text {output:""} run data modify storage pandamium.db.mail:io selected.entry.data.items[0].name set from storage pandamium:text output
execute if score <has_item> variable matches 1 if data storage pandamium:text {output:""} run data modify storage pandamium.db.mail:io selected.entry.data.items[0].name set from storage pandamium:text unresolved_root

execute store success score <has_item> variable if data storage pandamium.db.mail:io selected.entry.data.items[1].name
execute if score <has_item> variable matches 1 run data modify storage pandamium:text input set from storage pandamium.db.mail:io selected.entry.data.items[1].name
execute if score <has_item> variable matches 1 run function pandamium:utils/text/update_pre_1_21_5_text_component
execute if score <has_item> variable matches 1 if data storage pandamium:text output unless data storage pandamium:text {output:""} run data modify storage pandamium.db.mail:io selected.entry.data.items[1].name set from storage pandamium:text output
execute if score <has_item> variable matches 1 if data storage pandamium:text {output:""} run data modify storage pandamium.db.mail:io selected.entry.data.items[1].name set from storage pandamium:text unresolved_root

execute store success score <has_item> variable if data storage pandamium.db.mail:io selected.entry.data.items[2].name
execute if score <has_item> variable matches 1 run data modify storage pandamium:text input set from storage pandamium.db.mail:io selected.entry.data.items[2].name
execute if score <has_item> variable matches 1 run function pandamium:utils/text/update_pre_1_21_5_text_component
execute if score <has_item> variable matches 1 if data storage pandamium:text output unless data storage pandamium:text {output:""} run data modify storage pandamium.db.mail:io selected.entry.data.items[2].name set from storage pandamium:text output
execute if score <has_item> variable matches 1 if data storage pandamium:text {output:""} run data modify storage pandamium.db.mail:io selected.entry.data.items[2].name set from storage pandamium:text unresolved_root

execute store success score <has_item> variable if data storage pandamium.db.mail:io selected.entry.data.items[3].name
execute if score <has_item> variable matches 1 run data modify storage pandamium:text input set from storage pandamium.db.mail:io selected.entry.data.items[3].name
execute if score <has_item> variable matches 1 run function pandamium:utils/text/update_pre_1_21_5_text_component
execute if score <has_item> variable matches 1 if data storage pandamium:text output unless data storage pandamium:text {output:""} run data modify storage pandamium.db.mail:io selected.entry.data.items[3].name set from storage pandamium:text output
execute if score <has_item> variable matches 1 if data storage pandamium:text {output:""} run data modify storage pandamium.db.mail:io selected.entry.data.items[3].name set from storage pandamium:text unresolved_root

execute store success score <has_item> variable if data storage pandamium.db.mail:io selected.entry.data.items[4].name
execute if score <has_item> variable matches 1 run data modify storage pandamium:text input set from storage pandamium.db.mail:io selected.entry.data.items[4].name
execute if score <has_item> variable matches 1 run function pandamium:utils/text/update_pre_1_21_5_text_component
execute if score <has_item> variable matches 1 if data storage pandamium:text output unless data storage pandamium:text {output:""} run data modify storage pandamium.db.mail:io selected.entry.data.items[4].name set from storage pandamium:text output
execute if score <has_item> variable matches 1 if data storage pandamium:text {output:""} run data modify storage pandamium.db.mail:io selected.entry.data.items[4].name set from storage pandamium:text unresolved_root

execute store success score <has_item> variable if data storage pandamium.db.mail:io selected.entry.data.items[5].name
execute if score <has_item> variable matches 1 run data modify storage pandamium:text input set from storage pandamium.db.mail:io selected.entry.data.items[5].name
execute if score <has_item> variable matches 1 run function pandamium:utils/text/update_pre_1_21_5_text_component
execute if score <has_item> variable matches 1 if data storage pandamium:text output unless data storage pandamium:text {output:""} run data modify storage pandamium.db.mail:io selected.entry.data.items[5].name set from storage pandamium:text output
execute if score <has_item> variable matches 1 if data storage pandamium:text {output:""} run data modify storage pandamium.db.mail:io selected.entry.data.items[5].name set from storage pandamium:text unresolved_root
