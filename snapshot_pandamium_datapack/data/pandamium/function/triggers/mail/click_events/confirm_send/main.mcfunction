# check that the player has not used up their maximum hourly mails
execute if function pandamium:triggers/mail/check_if_mail_limited run return 0

# load mail
execute store result score <mail_id> variable store result storage pandamium:templates macro.mail_id.mail_id int 1 run data get storage pandamium.db.click_events:io selected.entry.data.mail_id
function pandamium:utils/database/mail/load/from_mail_id with storage pandamium:templates macro.mail_id

# check access
execute store result score <sender_id> variable run data get storage pandamium.db.mail:io selected.entry.sender.id
execute unless score <sender_id> variable = @s id run return run tellraw @s [{"text":"[Mail]","color":"dark_red"},{"text":" That is not a valid option!","color":"red","hoverEvent":{"action":"show_text","contents":{"text":"Owner ID does not match","color":"red"}}}]

# check already sent
execute if data storage pandamium.db.mail:io selected.entry{sent:1b} run return run tellraw @s [{"text":"[Mail]","color":"dark_red"},{"text":" That is not a valid option!","color":"red","hoverEvent":{"action":"show_text","contents":{"text":"Mail entry is already sent","color":"red"}}}]

# prepare output message info
data modify storage pandamium:temp title set value '["n/a",{"text":" ","underlined":false},{"text":"ℹ","color":"blue","underlined":false,"hoverEvent":{"action":"show_text","contents":["",{"text":"To set a title, write a heading using markdown on the first line. For example:","color":"gray"},"\\n\\n# Title Goes Here\\nMessage goes here..."]}}]'
data modify storage pandamium:temp title set from storage pandamium.db.mail:io selected.entry.title

execute store result storage pandamium:templates macro.id.id int 1 store result score <id> variable run data get storage pandamium.db.mail:io selected.entry.receivers[0].id
function pandamium:utils/get/display_name/from_id with storage pandamium:templates macro.id
data modify storage pandamium:temp receiver_display_name set from storage pandamium:temp display_name

# send
function pandamium:utils/database/mail/modify/send
function pandamium:utils/database/mail/save

# expire click events
execute store result storage pandamium:templates macro.id.id int 1 run scoreboard players get @s id
function pandamium:triggers/mail/expire_mail_click_events with storage pandamium:templates macro.id
