# check that the player has not used up their maximum hourly mails
execute if function pandamium:triggers/mail/check_if_mail_limited run return 0

#> Check Conditions
# validate sender
execute if predicate pandamium:player/is_jailed run return run tellraw @s [{"text":"[Mail]","color":"dark_red"},{"text":" You cannot use this trigger in jail!","color":"red"}]
execute if entity @s[gamemode=spectator] run return run tellraw @s [{"text":"[Mail]","color":"dark_red"},{"text":" You cannot use this trigger in spectator mode!","color":"red"}]

# validate receiver player
execute if score @s mail matches 2..999999 unless function pandamium:triggers/mail/create_mail/validate_receiver_player run return 0

execute if score @s mail matches 1000202 if items entity @s weapon.mainhand * unless items entity @s weapon.mainhand writable_book[writable_book_content~{pages:{size:{min:1}}}] run return run tellraw @s [{"text":"[Mail]","color":"dark_red"},{"text":" Hold a Book and Quill with your message on the first page to create a news post!","color":"red"}]
execute if score @s mail matches 1000202 unless items entity @s weapon.mainhand * unless items entity @s weapon.offhand writable_book[writable_book_content~{pages:{size:{min:1}}}] run return run tellraw @s [{"text":"[Mail]","color":"dark_red"},{"text":" Hold a Book and Quill with your message on the first page to create a news post!","color":"red"}]
execute unless score @s mail matches 1000202 unless items entity @s weapon.* * run return run tellraw @s [{"text":"[Mail]","color":"dark_red"},{"text":" Hold a Book and Quill with your message on the first page to send mail! Alternatively, send a mail without a message by holding any other item.","color":"red"}]

execute if items entity @s weapon.mainhand * in pandamium:staff_world run item replace block 5 0 0 container.0 from entity @s weapon.mainhand
execute unless items entity @s weapon.mainhand * in pandamium:staff_world run item replace block 5 0 0 container.0 from entity @s weapon.offhand
data remove storage pandamium:temp item
execute in pandamium:staff_world run data modify storage pandamium:temp item set from block 5 0 0 item
execute store success score <holding_book_and_quill> variable if data storage pandamium:temp item.components."minecraft:writable_book_content".pages[0]

#> Send Mail
# create
execute store result score <mail_id> variable run function pandamium:utils/database/mail/load_new

# set sender
execute store result storage pandamium:templates macro.id.id int 1 run scoreboard players get @s id
function pandamium:utils/database/mail/modify/add_sender_from_id with storage pandamium:templates macro.id

# set receiver
execute if score @s mail matches 1000201 run data modify storage pandamium.db.mail:io selected.entry.receiver_type set value "staff"
execute if score @s mail matches 1000202 run data modify storage pandamium.db.mail:io selected.entry.receiver_type set value "news_feed"
execute if score @s mail matches 2..999999 store result storage pandamium:templates macro.id.id int 1 run scoreboard players get @s mail
execute if score @s mail matches 2..999999 run function pandamium:utils/database/mail/modify/add_receiver_from_id with storage pandamium:templates macro.id

# set message, title, and preview
execute if score <holding_book_and_quill> variable matches 1 unless function pandamium:triggers/mail/create_mail/set_data_from_writable_book run return 0

# attach item
execute if score <holding_book_and_quill> variable matches 0 unless score @s mail matches 1000202 run function pandamium:triggers/mail/create_mail/set_data_from_other_item

#> Print Preparation Menu
function pandamium:triggers/mail/print_preparation_menu

# save
function pandamium:utils/database/mail/save
