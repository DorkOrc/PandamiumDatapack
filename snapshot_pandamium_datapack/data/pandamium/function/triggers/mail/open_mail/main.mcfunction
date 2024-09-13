# load mail
scoreboard players operation <mail_id> variable = @s mail
scoreboard players operation <mail_id> variable *= #-1 constant
execute store result storage pandamium:local functions."pandamium:triggers/mail/open_mail/main".mail_id int 1 run scoreboard players remove <mail_id> variable 2000000
function pandamium:utils/database/mail/load/from_mail_id with storage pandamium:local functions."pandamium:triggers/mail/open_mail/main"

# check access
execute store success score <receiver_type_is_news_feed> variable store success score <has_access> variable if data storage pandamium.db.mail:io selected.entry{receiver_type:"news_feed"}
execute store result storage pandamium:local functions."pandamium:triggers/mail/open_mail/main".id int 1 run scoreboard players get @s id
execute if score <receiver_type_is_news_feed> variable matches 0 run function pandamium:triggers/mail/open_mail/validate_and_record_reciever with storage pandamium:local functions."pandamium:triggers/mail/open_mail/main"
execute if score <has_access> variable matches 0 run return run tellraw @s [{"text":"[Mail]","color":"dark_red"},{"text":" You are not a receiver of that mail entry!","color":"red"}]

execute if score <receiver_type_is_news_feed> variable matches 0 if score <had_already_read> variable matches 0 run scoreboard players remove @s mail_data.unread_mails 1
execute if score <receiver_type_is_news_feed> variable matches 0 if score <had_already_read> variable matches 0 store result score <id> variable run data get storage pandamium.db.mail:io selected.entry.sender.id
execute if score <receiver_type_is_news_feed> variable matches 0 if score <had_already_read> variable matches 0 run title @a[predicate=pandamium:matches_id,limit=1] actionbar [{"text":"","color":"yellow"},{"selector":"@s","color":"gold"}," opened your mail"]
function pandamium:triggers/mail/open_mail/update_cached_mail with storage pandamium:local functions."pandamium:triggers/mail/open_mail/main"

# print mail
function pandamium:triggers/mail/expire_mail_click_events with storage pandamium:local functions."pandamium:triggers/mail/open_mail/main"
function pandamium:triggers/mail/print_received_mail_menu/main

# save changes
function pandamium:utils/database/mail/save
