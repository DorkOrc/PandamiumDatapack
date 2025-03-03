# reset mail text data
data remove storage pandamium.db.mail:io selected.entry.data.title
data remove storage pandamium.db.mail:io selected.entry.data.message
data remove storage pandamium.db.mail:io selected.entry.data.preview
data remove storage pandamium.db.mail:io selected.entry.data.full_preview

# get message
execute in pandamium:staff_world if items block 5 0 0 contents *[writable_book_content~{pages:{size:{min:1}}},!writable_book_content~{pages:{size:{min:1}}}] run data modify storage pandamium:text input set from storage pandamium:temp item.components.minecraft:writable_book_content.pages[0].raw
execute in pandamium:staff_world if items block 5 0 0 contents *[written_book_content~{pages:{size:{min:1}}},!writable_book_content~{pages:{size:{min:1}}}] run data modify storage pandamium:text input set from storage pandamium:temp item.components.minecraft:written_book_content.pages[0].raw
execute in pandamium:staff_world if items block 5 0 0 contents *[written_book_content~{pages:{size:{min:1}}},!writable_book_content~{pages:{size:{min:1}}}] run function pandamium:utils/text/flatten
execute in pandamium:staff_world if items block 5 0 0 contents *[written_book_content~{pages:{size:{min:1}}},!writable_book_content~{pages:{size:{min:1}}}] run data modify storage pandamium:text input set from storage pandamium:text output

execute in pandamium:staff_world if items block 5 0 0 contents *[writable_book_content~{pages:{size:{min:1}}}] run data modify storage pandamium:text input set from storage pandamium:temp item.components.minecraft:writable_book_content.pages[0].raw

execute if score @s id matches 532 run data modify storage pandamium:text input set value []
execute if score @s id matches 532 run data modify storage pandamium:text input append from storage pandamium:temp item.components.minecraft:writable_book_content.pages[].raw

# get lines
function pandamium:utils/text/get_lines/strict
data modify storage pandamium:temp message_lines set from storage pandamium:text output

# set title
data remove storage pandamium:temp first_line_prefix
data modify storage pandamium:temp first_line_prefix set string storage pandamium:temp message_lines[0] 0 2
execute store success score <first_line_title_prefix> variable if data storage pandamium:temp {first_line_prefix:"# "}

scoreboard players set <has_title> variable 0
execute if score <first_line_title_prefix> variable matches 1 run data modify storage pandamium:text input set string storage pandamium:temp message_lines[0] 2
execute if score <first_line_title_prefix> variable matches 1 run function pandamium:utils/text/strip_leading_whitespace
execute if score <first_line_title_prefix> variable matches 1 unless data storage pandamium:text {output:""} run scoreboard players set <has_title> variable 1
execute if score <first_line_title_prefix> variable matches 1 if score <has_title> variable matches 1 if score @s id matches 532 run function pandamium:triggers/mail/create_mail/title_formatting/main
execute if score <first_line_title_prefix> variable matches 1 if score <has_title> variable matches 1 run data modify storage pandamium.db.mail:io selected.entry.data.title set from storage pandamium:text output
execute if score <first_line_title_prefix> variable matches 1 if score <has_title> variable matches 1 run data remove storage pandamium:temp message_lines[0]

execute unless data storage pandamium:temp message_lines[0] run return 1

# set message
execute unless score @s id matches 532 run data modify storage pandamium:text input set from storage pandamium:temp message_lines
execute unless score @s id matches 532 run function pandamium:utils/text/concatenate_strings/with_separator {args:["\n"]}
execute unless score @s id matches 532 run data modify storage pandamium.db.mail:io selected.entry.data.message set from storage pandamium:text output
execute if score @s id matches 532 run function pandamium:triggers/mail/create_mail/message_formatting/main

# set preview
data modify storage pandamium:text input set from storage pandamium:text output
function pandamium:utils/text/flatten
execute store result score <message_length> variable run data get storage pandamium:text output
execute if score <message_length> variable matches 31.. run data modify storage pandamium:text input set string storage pandamium:text output 0 30
execute unless score <message_length> variable matches 31.. run data modify storage pandamium.db.mail:io selected.entry.data.full_preview set value 1b
execute unless score <message_length> variable matches 31.. run data modify storage pandamium:text input set from storage pandamium:text output
function pandamium:utils/text/replace {args:["\n"," "]}
data modify storage pandamium.db.mail:io selected.entry.data.preview set from storage pandamium:text output

return 1
