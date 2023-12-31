# load mail
execute store result score <mail_id> variable store result storage pandamium:templates macro.mail_id.mail_id int 1 run data get storage pandamium.db:click_events selected.entry.data.mail_id
function pandamium:utils/database/mail/load/from_mail_id with storage pandamium:templates macro.mail_id

# check access
execute store result storage pandamium:templates macro.id.id int 1 run scoreboard players get @s id
function pandamium:triggers/mail/click_events/confirm_send/has_access_to_mail_entry with storage pandamium:templates macro.id
execute if score <has_access> variable matches 0 run return run tellraw @s [{"text":"[Mail]","color":"dark_red"},{"text":" That is not a valid option!","color":"red","hoverEvent":{"action":"show_text","contents":{"text":"Owner ID does not match","color":"red"}}}]

# check already sent
execute if data storage pandamium.db:mail selected.entry{sent:1b} run return run tellraw @s [{"text":"[Mail]","color":"dark_red"},{"text":" That is not a valid option!","color":"red","hoverEvent":{"action":"show_text","contents":{"text":"Mail entry is already sent","color":"red"}}}]

# prepare output message info
data modify storage pandamium:temp title set value '["n/a",{"text":" ","underlined":false},{"text":"ℹ","color":"blue","underlined":false,"hoverEvent":{"action":"show_text","contents":["",{"text":"To set a title, write a heading using markdown on the first line. For example:","color":"gray"},"\\n\\n# Title Goes Here\\nMessage goes here..."]}}]'
data modify storage pandamium:temp title set from storage pandamium.db:mail selected.entry.title

execute store result storage pandamium:templates macro.id.id int 1 store result score <id> variable run data get storage pandamium.db:mail selected.entry.receivers[0].id
function pandamium:utils/get/display_name/from_id with storage pandamium:templates macro.id
data modify storage pandamium:temp receiver_display_name set from storage pandamium:temp display_name

# send
function pandamium:utils/database/mail/modify/send
function pandamium:utils/database/mail/save

# expire click events
execute store result storage pandamium:templates macro.id.id int 1 run scoreboard players get @s id
function pandamium:triggers/mail/expire_mail_click_events with storage pandamium:templates macro.id

#> Output Message
execute store result storage pandamium:templates macro.id.id int 1 run scoreboard players get <id> variable
function pandamium:utils/get/display_name/from_id with storage pandamium:templates macro.id
tellraw @s [{"text":"[Mail]","color":"dark_green"},[{"text":" Sent ","color":"green"},{"storage":"pandamium:temp","nbt":"display_name","interpret":true}," mail!"]]
tellraw @a[predicate=pandamium:matches_id] [{"text":"[Mail]","color":"blue"},[{"text":" ","color":"green"},{"selector":"@s"}," sent you mail! ",{"text":"[View your Inbox]","color":"gold","hoverEvent":{"action":"show_text","contents":[{"text":"Click to see ","color":"gold"},{"text":"Your Inbox","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger mail set 1000001"}}]]
execute as @a[predicate=pandamium:matches_id] at @s run playsound block.note_block.chime master @s
