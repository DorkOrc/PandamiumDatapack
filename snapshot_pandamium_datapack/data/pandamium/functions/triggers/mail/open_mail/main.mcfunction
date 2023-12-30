# load mail
scoreboard players operation <mail_id> variable = @s mail
scoreboard players operation <mail_id> variable *= #-1 constant
execute store result storage pandamium:templates macro.mail_id.mail_id int 1 run scoreboard players remove <mail_id> variable 2000000
function pandamium:utils/database/mail/load/from_mail_id with storage pandamium:templates macro.mail_id

# check access
execute store result storage pandamium:templates macro.id.id int 1 run scoreboard players get @s id
function pandamium:triggers/mail/open_mail/has_access_to_mail_entry with storage pandamium:templates macro.id
execute if score <has_access> variable matches 0 run return run tellraw @s [{"text":"[Mail]","color":"dark_red"},{"text":" You are not a receiver of that mail entry!","color":"red"}]

# prepare menu info
data modify storage pandamium:temp display_title set value '{"italic":true,"text":"Untitled Mail"}'
data modify storage pandamium:temp display_title set from storage pandamium.db:mail selected.entry.data.title

scoreboard players set <sent_by_player> variable 1
execute if data storage pandamium.db:mail selected.entry.sender.type unless data storage pandamium.db:mail selected.entry.sender{type:"player"} run scoreboard players set <sent_by_player> variable 0
execute if score <sent_by_player> variable matches 1 store result storage pandamium:templates macro.id.id int 1 run data get storage pandamium.db:mail selected.entry.sender.id
execute if score <sent_by_player> variable matches 1 run function pandamium:utils/get/display_name/from_id with storage pandamium:templates macro.id
execute if score <sent_by_player> variable matches 1 run data modify storage pandamium:temp sender_display_name set from storage pandamium:temp display_name
execute if score <sent_by_player> variable matches 0 run data modify storage pandamium:temp sender_display_name set value '">>non-player<<"'

function pandamium:triggers/mail/get_time_phrase

execute store result storage pandamium:templates macro.id.id int 1 run data get storage pandamium.db:mail selected.entry.receivers[0].id
function pandamium:utils/get/display_name/from_id with storage pandamium:templates macro.id
data modify storage pandamium:temp receiver_display_name set from storage pandamium:temp display_name

# print
tellraw @s [{"text":"======== ","color":"aqua"},{"text":"Mail","bold":true}," ========"]
tellraw @s ["",{"text":"Title: ","color":"gray"},{"storage":"pandamium:temp","nbt":"display_title","interpret":true,"underlined":true}," ",{"text":"\nMessage:\n","color":"gray"},{"storage":"pandamium.db:mail","nbt":"selected.entry.data.message","interpret":true},{"text":"\nFrom: ","color":"gray"},[{"text":"","color":"aqua"},{"storage":"pandamium:temp","nbt":"sender_display_name","interpret":true}]," ",{"text":"[⌚]","color":"dark_gray","hoverEvent":{"action":"show_text","contents":["Sent ",{"storage":"pandamium:temp","nbt":"time_phrase","interpret":true}]}}]

tellraw @s ["\n",{"text":"Pages: ","color":"yellow","bold":true},{"storage":"pandamium:dictionary","nbt":"triggers.mail.main_menu_button","interpret":true},{"text":" > ","color":"gray"},{"storage":"pandamium:dictionary","nbt":"triggers.mail.inbox_menu_button","interpret":true}]
tellraw @s {"text":"======================","color":"aqua"}

function pandamium:utils/database/mail/save
