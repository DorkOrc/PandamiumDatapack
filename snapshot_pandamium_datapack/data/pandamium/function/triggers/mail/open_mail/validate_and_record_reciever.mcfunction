# arguments: id, mail_id

execute if score <receiver_type_is_news_feed> variable matches 1 run scoreboard players set <has_access> variable 1
execute if score <receiver_type_is_staff> variable matches 1 if score @s staff_perms matches 1.. run scoreboard players set <has_access> variable 1
$execute if score <has_access> variable matches 1 unless score <receiver_type_is_news_feed> variable matches 1 if data storage pandamium.db.mail:io selected.entry.receivers[{id:$(id)}] run data modify storage pandamium.db.mail:io selected.entry.receivers[{id:$(id)}].read set value 1b
$execute if score <has_access> variable matches 1 unless score <receiver_type_is_news_feed> variable matches 1 unless data storage pandamium.db.mail:io selected.entry.receivers[{id:$(id)}] run data modify storage pandamium.db.mail:io selected.entry.indirect_receivers[{id:$(id)}].read set value 1b
$execute if score <has_access> variable matches 1 if score <receiver_type_is_staff> variable matches 1 run data remove storage pandamium.db.mail:data staff_inbox[{mail_id:$(mail_id)}].unread
execute if score <has_access> variable matches 1 run return 1

$execute unless data storage pandamium.db.mail:io selected.entry.receivers[{id:$(id)}] run return 0
scoreboard players set <has_access> variable 1
$execute store success score <had_already_read> variable if data storage pandamium.db.mail:io selected.entry.receivers[{id:$(id),read:1b}]
$execute if score <had_already_read> variable matches 0 run data modify storage pandamium.db.mail:io selected.entry.receivers[{id:$(id)}].read set value 1b
