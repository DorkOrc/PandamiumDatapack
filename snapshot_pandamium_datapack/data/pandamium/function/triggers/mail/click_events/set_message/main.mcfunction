# load mail
execute store result score <mail_id> variable run data get storage pandamium.db.click_events:io selected.entry.data.mail_id
function pandamium:utils/database/mail/load/from_mail_id with storage pandamium.db.click_events:io selected.entry.data

# get held item
execute unless items entity @s weapon.* writable_book[writable_book_content~{pages:{size:{min:1}}}] run return run tellraw @s [{"text":"[Mail]","color":"dark_red"},{"text":" Hold a Book and Quill with your message on the first page to add a message!","color":"red"}]

execute if items entity @s weapon.mainhand writable_book[writable_book_content~{pages:{size:{min:1}}}] in pandamium:staff_world run item replace block 5 0 0 contents from entity @s weapon.mainhand
execute unless items entity @s weapon.mainhand writable_book[writable_book_content~{pages:{size:{min:1}}}] in pandamium:staff_world run item replace block 5 0 0 contents from entity @s weapon.offhand
execute in pandamium:staff_world run data modify storage pandamium:temp item set from block 5 0 0 item

execute unless function pandamium:triggers/mail/create_mail/set_data_from_writable_book run return 0

# reprint menu
execute store result storage pandamium:templates macro.id.id int 1 run scoreboard players get @s id
function pandamium:triggers/mail/expire_mail_click_events with storage pandamium:templates macro.id
function pandamium:triggers/mail/print_preparation_menu

# save changes
function pandamium:utils/database/mail/save
