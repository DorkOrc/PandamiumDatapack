# arguments: id

scoreboard players add @s mail_data.unread_mails 1

tellraw @s [{text:"[Mail]",color:"blue"},{text:" ",color:"green",extra:[{text:"",color:"aqua",extra:[{storage:"pandamium:temp",nbt:"sender_display_name",interpret:true}]},{text:" sent you mail! "},{text:"[View your Inbox]",color:"gold",hover_event:{action:"show_text",value:[{text:"Click to see ",color:"gold"},{text:"Your Inbox",bold:true}]},click_event:{action:"run_command",command:"trigger mail set 1000102"}}]}]
execute at @s run playsound block.note_block.chime master @s

function pandamium:utils/database/player_cache/load/self

data modify storage pandamium.db.player_cache:io selected.entry.mail.inbox append value {valid:0b,read:1b,has_unclaimed_items:0b,total_unclaimed_items:0b}
data modify storage pandamium.db.player_cache:io selected.entry.mail.inbox[-1].mail_id set from storage pandamium.db.mail:io selected.entry.mail_id

data modify storage pandamium:local functions."pandamium:impl/database/mail/modify/send/as_receiver_if_online".items set value []
data modify storage pandamium:local functions."pandamium:impl/database/mail/modify/send/as_receiver_if_online".items set from storage pandamium.db.mail:io selected.entry.data.items
data remove storage pandamium:local functions."pandamium:impl/database/mail/modify/send/as_receiver_if_online".items[{taken:1b}]
execute unless data storage pandamium:local functions."pandamium:impl/database/mail/modify/send/as_receiver_if_online".items[0] run return run function pandamium:utils/database/player_cache/save
execute if data storage pandamium:local functions."pandamium:impl/database/mail/modify/send/as_receiver_if_online".items[0] run data modify storage pandamium:local functions."pandamium:impl/database/mail/modify/send/as_receiver_if_online".items[].is_private set value 1b
execute if data storage pandamium:local functions."pandamium:impl/database/mail/modify/send/as_receiver_if_online".items[0] run data modify storage pandamium:local functions."pandamium:impl/database/mail/modify/send/as_receiver_if_online".items[].private.id.missing_user_id set value 1b
execute if data storage pandamium:local functions."pandamium:impl/database/mail/modify/send/as_receiver_if_online".items[{private:{id:{missing_user_id:1b}}}] run data modify storage pandamium:local functions."pandamium:impl/database/mail/modify/send/as_receiver_if_online".items[{private:{id:{missing_user_id:1b}}}].is_private set value 0b
$execute if data storage pandamium:local functions."pandamium:impl/database/mail/modify/send/as_receiver_if_online".items[{is_private:1b,private:{id:$(id)}}] run data modify storage pandamium:local functions."pandamium:impl/database/mail/modify/send/as_receiver_if_online".items[{is_private:1b,private:{id:$(id)}}].is_private set value 0b
data remove storage pandamium:local functions."pandamium:impl/database/mail/modify/send/as_receiver_if_online".items[{is_private:1b}]
execute store result score <unclaimed_item_slots> variable store result storage pandamium.db.player_cache:io selected.entry.mail.inbox[-1].total_unclaimed_items byte 1 store success storage pandamium.db.player_cache:io selected.entry.mail.inbox[-1].has_unclaimed_items byte 1 if data storage pandamium:local functions."pandamium:impl/database/mail/modify/send/as_receiver_if_online".items[]
scoreboard players operation @s mail_data.unclaimed_items += <unclaimed_item_slots> variable

function pandamium:utils/database/player_cache/save
