# load mail
scoreboard players operation <mail_id> variable = @s mail
scoreboard players operation <mail_id> variable *= #-1 constant
execute store result storage pandamium:templates macro.mail_id.mail_id int 1 run scoreboard players remove <mail_id> variable 1000000
function pandamium:utils/database/mail/load/from_mail_id with storage pandamium:templates macro.mail_id

# check already sent
execute if data storage pandamium.db:mail selected.entry{sent:1b} run return run tellraw @s [{"text":"[Mail]","color":"dark_red"},{"text":" That is not a valid option! (already sent)","color":"red"}]

# check access
execute store result storage pandamium:templates macro.id.id int 1 run scoreboard players get @s id
function pandamium:triggers/mail/send_mail/has_access_to_mail_entry with storage pandamium:templates macro.id
execute if score <has_access> variable matches 0 run return run tellraw @s [{"text":"[Mail]","color":"dark_red"},{"text":" That is not a valid option! (not owner)","color":"red"}]

# check_receiver_staff_rank_temporary
function pandamium:utils/get/username/from_id with storage pandamium.db:mail entries[-1].receivers[0]
data modify storage pandamium:templates macro.username.username set from storage pandamium:temp username
function pandamium:triggers/mail/send_mail/get_receiver_staff_rank_temporary with storage pandamium:templates macro.username
execute if score <staff_rank> variable matches 0 run return run tellraw @s [{"text":"[Mail]","color":"dark_red"},{"text":" Sending mail to non-staff players is currently disabled! (beta)","color":"red"}]

# prepare output message info
data modify storage pandamium:temp title set value '["n/a",{"text":" ","underlined":false},{"text":"ℹ","color":"blue","underlined":false,"hoverEvent":{"action":"show_text","contents":["",{"text":"To set a title, write a heading using markdown on the first line. For example:","color":"gray"},"\\n\\n# Title Goes Here\\nMessage goes here..."]}}]'
data modify storage pandamium:temp title set from storage pandamium.db:mail selected.entry.title

execute store result storage pandamium:templates macro.id.id int 1 store result score <id> variable run data get storage pandamium.db:mail selected.entry.receivers[0].id
function pandamium:utils/get/display_name/from_id with storage pandamium:templates macro.id
data modify storage pandamium:temp receiver_display_name set from storage pandamium:temp display_name

# send
function pandamium:utils/database/mail/modify/send
function pandamium:utils/database/mail/save

#> Output Message
execute store result storage pandamium:templates macro.id.id int 1 run scoreboard players get <id> variable
function pandamium:utils/get/display_name/from_id with storage pandamium:templates macro.id
tellraw @s [{"text":"[Mail]","color":"dark_green"},[{"text":" Sent ","color":"green"},{"storage":"pandamium:temp","nbt":"display_name","interpret":true}," mail!"]]
tellraw @a[predicate=pandamium:matches_id] [{"text":"[Mail]","color":"blue"},[{"text":" ","color":"green"},{"selector":"@s"}," sent you mail!"]]
