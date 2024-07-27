# arguments: id

scoreboard players add @s mail_data.unread_mails 1

tellraw @s [{"text":"[Mail]","color":"blue"},[{"text":" ","color":"green"},[{"text":"","color":"aqua"},{"storage":"pandamium:temp","nbt":"sender_display_name","interpret":true}]," sent you mail! ",{"text":"[View your Inbox]","color":"gold","hoverEvent":{"action":"show_text","contents":[{"text":"Click to see ","color":"gold"},{"text":"Your Inbox","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger mail set 1000102"}}]]
execute at @s run playsound block.note_block.chime master @s

function pandamium:utils/database/player_cache/load/self

data modify storage pandamium.db.player_cache:io selected.entry.mail.inbox append value {mail_id:0,valid:1b,read:0b}
data modify storage pandamium.db.player_cache:io selected.entry.mail.inbox[-1].mail_id set from storage pandamium.db.mail:io selected.entry.mail_id

data modify storage pandamium:local functions."pandamium:impl/database/mail/modify/send/as_receiver_if_online".items set value []
data modify storage pandamium:local functions."pandamium:impl/database/mail/modify/send/as_receiver_if_online".items set from storage pandamium.db.mail:io selected.entry.data.items
execute unless data storage pandamium:local functions."pandamium:impl/database/mail/modify/send/as_receiver_if_online".items[0] run return run function pandamium:utils/database/player_cache/save
execute if data storage pandamium:local functions."pandamium:impl/database/mail/modify/send/as_receiver_if_online".items[0] run data modify storage pandamium:local functions."pandamium:impl/database/mail/modify/send/as_receiver_if_online".items[].unavailable set value 1b
execute if data storage pandamium:local functions."pandamium:impl/database/mail/modify/send/as_receiver_if_online".items[0] run data modify storage pandamium:local functions."pandamium:impl/database/mail/modify/send/as_receiver_if_online".items[].private.available set value 1b
$execute if data storage pandamium:local functions."pandamium:impl/database/mail/modify/send/as_receiver_if_online".items[{private:$(id)}] run data modify storage pandamium:local functions."pandamium:impl/database/mail/modify/send/as_receiver_if_online".items[{private:$(id)}].private set value {available:1b}
execute if data storage pandamium:local functions."pandamium:impl/database/mail/modify/send/as_receiver_if_online".items[{private:{available:1b}}] run data modify storage pandamium:local functions."pandamium:impl/database/mail/modify/send/as_receiver_if_online".items[{private:{available:1b}}].unavailable set value 0b
data remove storage pandamium:local functions."pandamium:impl/database/mail/modify/send/as_receiver_if_online".items[{taken:1b}]
data remove storage pandamium:local functions."pandamium:impl/database/mail/modify/send/as_receiver_if_online".items[{unavailable:1b}]
execute store result score <unclaimed_item_slots> variable store success storage pandamium.db.player_cache:io selected.entry.mail.inbox[-1].has_unclaimed_items byte 1 if data storage pandamium:local functions."pandamium:impl/database/mail/modify/send/as_receiver_if_online".items[]
scoreboard players operation @s mail_data.unclaimed_items += <unclaimed_item_slots> variable

function pandamium:utils/database/player_cache/save
