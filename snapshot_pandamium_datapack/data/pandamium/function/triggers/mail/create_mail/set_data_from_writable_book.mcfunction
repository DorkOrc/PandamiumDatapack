# reset mail text data
data remove storage pandamium.db.mail:io selected.entry.data.title
data remove storage pandamium.db.mail:io selected.entry.data.message

# get message
data modify storage do:io input set value []
execute in pandamium:staff_world if items block 5 0 0 contents written_book[written_book_content~{pages:{size:{min:1}}}] run data modify storage do:io input append from storage pandamium:temp item.components.minecraft:written_book_content.pages[].raw
execute in pandamium:staff_world if items block 5 0 0 contents writable_book[writable_book_content~{pages:{size:{min:1}}}] run data modify storage do:io input append from storage pandamium:temp item.components.minecraft:writable_book_content.pages[].raw
execute if data storage do:io input[0] run function do:list/of_strings/limit_combined_length. {args:{length:2000}}
function do:text/flatten

# get lines
function do:str/split_and_strip_lines
data modify storage pandamium:local functions."pandamium:triggers/mail/create_mail/set_data_from_writable_book".message_lines set from storage do:io output

# set title
data remove storage pandamium:local functions."pandamium:triggers/mail/create_mail/set_data_from_writable_book".first_line_prefix
data modify storage pandamium:local functions."pandamium:triggers/mail/create_mail/set_data_from_writable_book".first_line_prefix set string storage pandamium:local functions."pandamium:triggers/mail/create_mail/set_data_from_writable_book".message_lines[0] 0 2
execute store success score <first_line_title_prefix> variable if data storage pandamium:local functions."pandamium:triggers/mail/create_mail/set_data_from_writable_book"{first_line_prefix:"# "}
scoreboard players set <has_title> variable 0
execute if score <first_line_title_prefix> variable matches 1 run data modify storage do:io input set string storage pandamium:local functions."pandamium:triggers/mail/create_mail/set_data_from_writable_book".message_lines[0] 2
execute if score <first_line_title_prefix> variable matches 1 run function do:str/strip_leading_whitespace
execute if score <first_line_title_prefix> variable matches 1 run function do:str/strip_trailing_whitespace
execute if score <first_line_title_prefix> variable matches 1 unless data storage do:io {output:""} run scoreboard players set <has_title> variable 1
#execute if score <has_title> variable matches 1 if predicate pandamium:player/min_staff_perms/senior_moderator run function do:str/interpret_markdown. {args:{hyperlinks:false}}
execute if score <has_title> variable matches 1 run data modify storage pandamium.db.mail:io selected.entry.data.title set from storage do:io output
execute if score <has_title> variable matches 1 run data remove storage pandamium:local functions."pandamium:triggers/mail/create_mail/set_data_from_writable_book".message_lines[0]

execute unless data storage pandamium:local functions."pandamium:triggers/mail/create_mail/set_data_from_writable_book".message_lines[0] run return 1

# set message
data modify storage do:io input set from storage pandamium:local functions."pandamium:triggers/mail/create_mail/set_data_from_writable_book".message_lines
execute if score <has_title> variable matches 1 run function do:list/of_strings/remove_leading_empty_strings
function do:str/join. {args:{separator:"\n"}}
execute if data storage do:io {output:""} run return 1
#execute unless predicate pandamium:player/min_staff_perms/senior_moderator run function do:str/interpret_markdown. {args:{hyperlinks:false}}
#execute if predicate pandamium:player/min_staff_perms/senior_moderator run function do:str/interpret_markdown. {args:{hyperlinks:true}}
data modify storage pandamium.db.mail:io selected.entry.data.message set from storage do:io output

return 1
