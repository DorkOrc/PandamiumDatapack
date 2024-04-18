# check that the player has not used up their maximum hourly mails
execute if function pandamium:triggers/mail/check_if_mail_limited run return 0

#> Check Conditions
execute if score @s mail = @s id run return run tellraw @s [{"text":"[Mail]","color":"dark_red"},{"text":" You cannot send yourself mail!","color":"red"}]

execute store result storage pandamium:templates macro.id.id int 1 run scoreboard players get @s mail
function pandamium:utils/database/players/load/from_id with storage pandamium:templates macro.id
execute unless data storage pandamium.db.players:io selected run return run tellraw @s [{"text":"[Mail]","color":"dark_red"},[{"text":" Could not find a player with ID ","color":"red"},{"score":{"name":"@s","objective":"mail"}},"!"]]

execute store result score <target_can_receive_mail> variable run function pandamium:triggers/mail/check_if_user_can_receive_mail with storage pandamium.db.players:io selected.entry
execute if score <target_can_receive_mail> variable matches -1 run return run tellraw @s [{"text":"[Mail]","color":"dark_red"},[{"text":" That player has not joined since mailing was enabled! Once they join the game at least once, they will be elligible for receiving mail.","color":"red"}]]
execute if score <target_can_receive_mail> variable matches ..-2 run return run tellraw @s [{"text":"[Mail]","color":"dark_red"},[{"text":" You may not send mail to that player currently!","color":"red"}]]

execute unless predicate pandamium:holding_anything run return run tellraw @s [{"text":"[Mail]","color":"dark_red"},{"text":" Hold a Book and Quill with your message on the first page to send mail! Alternatively, send a mail without a message by holding any other item.","color":"red"}]

execute if predicate pandamium:holding_anything_in_mainhand in pandamium:staff_world run item replace block 5 0 0 container.0 from entity @s weapon.mainhand
execute unless predicate pandamium:holding_anything_in_mainhand in pandamium:staff_world run item replace block 5 0 0 container.0 from entity @s weapon.offhand
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
execute store result storage pandamium:templates macro.id.id int 1 run scoreboard players get @s mail
function pandamium:utils/database/mail/modify/add_receiver_from_id with storage pandamium:templates macro.id

# set message, title, and preview
execute if score <holding_book_and_quill> variable matches 1 unless function pandamium:triggers/mail/create_mail/set_data_from_writable_book run return 0

# attach item
execute if score <holding_book_and_quill> variable matches 0 run function pandamium:triggers/mail/create_mail/set_data_from_other_item

#> Print Preparation Menu
function pandamium:triggers/mail/print_preparation_menu

# save
function pandamium:utils/database/mail/save
