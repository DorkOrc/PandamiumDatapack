# arguments: type, self

$data modify storage pandamium:temp type set value "$(type)"
scoreboard players reset <mail_list_type> variable
execute if data storage pandamium:temp {type:"inbox"} run scoreboard players set <mail_list_type> variable 0
execute if data storage pandamium:temp {type:"outbox"} run scoreboard players set <mail_list_type> variable 1
execute if data storage pandamium:temp {type:"server_outbox"} run scoreboard players set <mail_list_type> variable 2
execute if data storage pandamium:temp {type:"drafts"} run scoreboard players set <mail_list_type> variable 3
execute if data storage pandamium:temp {type:"news_feed_inbox"} run scoreboard players set <mail_list_type> variable 4
execute if data storage pandamium:temp {type:"staff_inbox"} run scoreboard players set <mail_list_type> variable 5
execute unless score <mail_list_type> variable matches 0.. run return fail

$scoreboard players set <self> variable $(self)
execute unless score <self> variable matches 0..1 run return fail
execute if score <self> variable matches 0 unless data storage pandamium.db.players:io selected run return fail

execute if score <self> variable matches 1 run tellraw @s {storage:"pandamium:temp",nbt:"menu_header",interpret:true}
execute if score <self> variable matches 0 run tellraw @s [{storage:"pandamium:temp",nbt:"menu_header",interpret:true,color:"yellow"},{text:"\nPlayer:",bold:true}," ",{storage:"pandamium.db.players:io",nbt:"selected.entry.username",color:"gold"}]

execute if predicate pandamium:mail_list_type/inbox run tellraw @s {text:"Inbox:",color:"aqua",bold:true}
execute if predicate pandamium:mail_list_type/outbox run tellraw @s {text:"Outbox:",color:"aqua",bold:true}
execute if predicate pandamium:mail_list_type/server_outbox run tellraw @s {text:"Server Outbox:",color:"aqua",bold:true}
execute if predicate pandamium:mail_list_type/drafts run tellraw @s {text:"Drafts:",color:"aqua",bold:true}
execute if predicate pandamium:mail_list_type/news_feed_inbox run tellraw @s {text:"News Feed:",color:"aqua",bold:true}
execute if predicate pandamium:mail_list_type/staff_inbox run tellraw @s {text:"The Staff Team's Inbox:",color:"aqua",bold:true}

execute if score <self> variable matches 1 if predicate pandamium:mail_list_type/inbox run function pandamium:utils/database/player_cache/load/self
execute if score <self> variable matches 1 if predicate pandamium:mail_list_type/outbox_or_drafts run function pandamium:utils/database/players/load/self
data remove storage pandamium:temp mail_ids
execute if predicate pandamium:mail_list_type/inbox if score <self> variable matches 0 run data modify storage pandamium:temp mail_ids set from storage pandamium.db.players:io selected.entry.data.mail.inbox
execute if predicate pandamium:mail_list_type/inbox if score <self> variable matches 1 run data modify storage pandamium:temp mail_ids set from storage pandamium.db.player_cache:io selected.entry.mail.inbox
execute if predicate pandamium:mail_list_type/outbox run data modify storage pandamium:temp mail_ids set from storage pandamium.db.players:io selected.entry.data.mail.outbox
execute if predicate pandamium:mail_list_type/server_outbox run data modify storage pandamium:temp mail_ids set from storage pandamium.db.mail:data server_outbox
execute if predicate pandamium:mail_list_type/drafts run data modify storage pandamium:temp mail_ids set from storage pandamium.db.players:io selected.entry.data.mail.drafts
execute if predicate pandamium:mail_list_type/news_feed_inbox run data modify storage pandamium:temp mail_ids set from storage pandamium.db.mail:data news_feed_inbox
execute if predicate pandamium:mail_list_type/staff_inbox run data modify storage pandamium:temp mail_ids set from storage pandamium.db.mail:data staff_inbox

execute if predicate pandamium:mail_list_type/inbox if score <self> variable matches 1 if score @s mail_data.inbox_tab matches 1 run data remove storage pandamium:temp mail_ids[{unread:0b}]
execute if predicate pandamium:mail_list_type/inbox if score <self> variable matches 1 if score @s mail_data.inbox_tab matches 2 run data remove storage pandamium:temp mail_ids[{has_unclaimed_items:0b}]
execute if predicate pandamium:mail_list_type/inbox if score <self> variable matches 1 unless score @s mail_data.show_messageless matches 1 run data remove storage pandamium:temp mail_ids[{has_unclaimed_items:0b,has_message:0b}]

execute if predicate pandamium:mail_list_type/inbox unless data storage pandamium:temp mail_ids[0] run tellraw @s {text:" Inbox is Empty ",color:"gray"}
execute if predicate pandamium:mail_list_type/outbox unless data storage pandamium:temp mail_ids[0] run tellraw @s {text:" Outbox is Empty ",color:"gray"}
execute if predicate pandamium:mail_list_type/server_outbox unless data storage pandamium:temp mail_ids[0] run tellraw @s {text:" Server Outbox is Empty ",color:"gray"}
execute if predicate pandamium:mail_list_type/drafts unless data storage pandamium:temp mail_ids[0] run tellraw @s {text:" Drafts is Empty ",color:"gray"}
execute if predicate pandamium:mail_list_type/news_feed_inbox unless data storage pandamium:temp mail_ids[0] run tellraw @s {text:" News Feed is Empty ",color:"gray"}
execute if predicate pandamium:mail_list_type/staff_inbox unless data storage pandamium:temp mail_ids[0] run tellraw @s {text:" The Staff Team's Inbox is Empty ",color:"gray"}

execute store result score <total_hidden_entries> variable store result score <pop_index> variable run data get storage pandamium:temp mail_ids
scoreboard players remove <total_hidden_entries> variable 20
execute if score <pop_index> variable matches ..19 run scoreboard players set <pop_index> variable 20
execute store result storage pandamium:templates macro.id__index.index int 1 run scoreboard players remove <pop_index> variable 20
execute store result storage pandamium:templates macro.id__index.id int 1 run scoreboard players get @s id

execute if score <total_hidden_entries> variable matches 1.. run tellraw @s ["• ",{text:"Hidden ",color:"dark_gray",extra:[{score:{name:"<total_hidden_entries>",objective:"variable"}}," older entries"]}]
execute if data storage pandamium:temp mail_ids[0] run function pandamium:triggers/mail/print_inbox_outbox_menu/loop with storage pandamium:templates macro.id__index

execute if predicate pandamium:mail_list_type/inbox if score <self> variable matches 1 run function pandamium:triggers/mail/print_inbox_outbox_menu/print_tab_buttons

execute if score <self> variable matches 1 run tellraw @s ["\n",{text:"Pages: ",color:"yellow",bold:true},{storage:"pandamium:dictionary",nbt:"triggers.mail.main_menu_button",interpret:true}]
execute if score <self> variable matches 1 run tellraw @s {text:"======================",color:"aqua"}
execute if score <self> variable matches 0 run tellraw @s {text:"======================",color:"yellow"}
