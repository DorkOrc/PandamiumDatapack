# reset mail text data
data remove storage pandamium.db.mail:io selected.entry.data.title
data remove storage pandamium.db.mail:io selected.entry.data.message

# get message
execute in pandamium:staff_world if items block 5 0 0 contents *[writable_book_content~{pages:{size:{min:1}}},!writable_book_content~{pages:{size:{min:1}}}] run data modify storage pandamium:text input set from storage pandamium:temp item.components.minecraft:writable_book_content.pages[0].raw
execute in pandamium:staff_world if items block 5 0 0 contents *[written_book_content~{pages:{size:{min:1}}},!writable_book_content~{pages:{size:{min:1}}}] run data modify storage pandamium:text input set from storage pandamium:temp item.components.minecraft:written_book_content.pages[0].raw
execute in pandamium:staff_world if items block 5 0 0 contents *[written_book_content~{pages:{size:{min:1}}},!writable_book_content~{pages:{size:{min:1}}}] run function pandamium:utils/text/flatten
execute in pandamium:staff_world if items block 5 0 0 contents *[written_book_content~{pages:{size:{min:1}}},!writable_book_content~{pages:{size:{min:1}}}] run data modify storage pandamium:text input set from storage pandamium:text output

execute in pandamium:staff_world if items block 5 0 0 contents *[writable_book_content~{pages:{size:{min:1}}}] run data modify storage pandamium:text input set from storage pandamium:temp item.components.minecraft:writable_book_content.pages[0].raw

# get lines
function pandamium:utils/text/get_lines/strict
data modify storage pandamium:temp message_lines set from storage pandamium:text output

# set title
data remove storage pandamium:temp first_line_prefix
data modify storage pandamium:temp first_line_prefix set string storage pandamium:temp message_lines[0] 0 2
data modify storage pandamium:temp first_line_prefix set string storage pandamium:temp first_line_prefix 0 30
execute store success score <first_line_title_prefix> variable if data storage pandamium:temp {first_line_prefix:"# "}

scoreboard players set <has_title> variable 0
execute if score <first_line_title_prefix> variable matches 1 run data modify storage pandamium:text input set string storage pandamium:temp message_lines[0] 2
execute if score <first_line_title_prefix> variable matches 1 run function pandamium:utils/text/strip_leading_whitespace
execute if score <first_line_title_prefix> variable matches 1 unless data storage pandamium:text {output:""} run scoreboard players set <has_title> variable 1
execute if score <first_line_title_prefix> variable matches 1 if score <has_title> variable matches 1 run data modify storage pandamium:text input set from storage pandamium:text output
execute if score <first_line_title_prefix> variable matches 1 if score <has_title> variable matches 1 run function pandamium:utils/text/markdown
execute if score <first_line_title_prefix> variable matches 1 if score <has_title> variable matches 1 run data modify storage pandamium.db.mail:io selected.entry.data.title set from storage pandamium:text output
execute if score <first_line_title_prefix> variable matches 1 if score <has_title> variable matches 1 run data remove storage pandamium:temp message_lines[0]

execute unless data storage pandamium:temp message_lines[0] run return 1

# set message
data modify storage pandamium:text input set from storage pandamium:temp message_lines
function pandamium:utils/text/concatenate_strings/with_separator {args:["\n"]}
data modify storage pandamium:text input set from storage pandamium:text output
function pandamium:utils/text/markdown
data modify storage pandamium.db.mail:io selected.entry.data.message set from storage pandamium:text output

return 1
