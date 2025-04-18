# reset mail text data
data remove storage pandamium.db.mail:io selected.entry.data.title
data remove storage pandamium.db.mail:io selected.entry.data.message

# get message
data modify storage pandamium:temp pages set value []
execute in pandamium:staff_world if items block 5 0 0 contents written_book[written_book_content~{pages:{size:{min:1}}}] run data modify storage pandamium:temp pages append from storage pandamium:temp item.components.minecraft:written_book_content.pages[].raw
execute in pandamium:staff_world if items block 5 0 0 contents writable_book[writable_book_content~{pages:{size:{min:1}}}] run data modify storage pandamium:temp pages append from storage pandamium:temp item.components.minecraft:writable_book_content.pages[].raw

data modify storage pandamium:text input set value []
data modify storage pandamium:text input append from storage pandamium:temp pages[0]
data modify storage pandamium:text input append from storage pandamium:temp pages[1]
data modify storage pandamium:text input append from storage pandamium:temp pages[2]
data modify storage pandamium:text input append from storage pandamium:temp pages[3]
data modify storage pandamium:text input append from storage pandamium:temp pages[4]
execute if data storage pandamium:temp pages[5] run tellraw @s {color:"red",text:"Reached Page Limit"}

function pandamium:utils/text/flatten
data modify storage pandamium:text input set string storage pandamium:text output 0 2000

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
execute if score <first_line_title_prefix> variable matches 1 if score <has_title> variable matches 1 if score @s staff_perms matches 3.. run data modify storage pandamium:text input set from storage pandamium:text output
execute if score <first_line_title_prefix> variable matches 1 if score <has_title> variable matches 1 if score @s staff_perms matches 3.. run function pandamium:utils/text/markdown {args:{hyperlinks:false}}
execute if score <first_line_title_prefix> variable matches 1 if score <has_title> variable matches 1 run data modify storage pandamium.db.mail:io selected.entry.data.title set from storage pandamium:text output
execute if score <first_line_title_prefix> variable matches 1 if score <has_title> variable matches 1 run data remove storage pandamium:temp message_lines[0]

execute unless data storage pandamium:temp message_lines[0] run return 1

# set message
data modify storage pandamium:text input set from storage pandamium:temp message_lines
function pandamium:utils/text/concatenate_strings/with_separator {args:["\n"]}
data modify storage pandamium:text input set from storage pandamium:text output
execute unless score @s staff_perms matches 3.. run function pandamium:utils/text/markdown {args:{hyperlinks:false}}
execute if score @s staff_perms matches 3.. run function pandamium:utils/text/markdown {args:{hyperlinks:true}}
data modify storage pandamium.db.mail:io selected.entry.data.message set from storage pandamium:text output

return 1
