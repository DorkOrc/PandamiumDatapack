# arguments: user_id

function pandamium:utils/database/mail/load/from_mail_id with storage pandamium:queue selected.entry.mail[-1]
data modify storage pandamium.db.player_cache:io selected.entry.mail.inbox prepend from storage pandamium:queue selected.entry.mail[-1]
data remove storage pandamium:queue selected.entry.mail[-1]

# valid
execute unless data storage pandamium.db.mail:io selected run return run data modify storage pandamium.db.player_cache:io selected.entry.mail.inbox[0] merge value {valid:0b,read:1b,has_unclaimed_items:0b}
data modify storage pandamium.db.player_cache:io selected.entry.mail.inbox[0].valid set value 1b

# read
$execute store success score <read> variable store success storage pandamium.db.player_cache:io selected.entry.mail.inbox[0].read byte 1 if data storage pandamium.db.mail:io selected.entry.receivers[{id:$(user_id),read:1b}]
$execute if score <read> variable matches 0 run scoreboard players add @a[scores={id=$(user_id)},limit=1] mail_data.unread_mails 1

# has_unclaimed_items
data modify storage pandamium:local functions."pandamium:impl/queue/actions/cache_mail/main".items set value []
data modify storage pandamium:local functions."pandamium:impl/queue/actions/cache_mail/main".items set from storage pandamium.db.mail:io selected.entry.data.items
data remove storage pandamium:local functions."pandamium:impl/queue/actions/cache_mail/main".items[{taken:1b}]
execute unless data storage pandamium:local functions."pandamium:impl/queue/actions/cache_mail/main".items[0] run return run data modify storage pandamium.db.player_cache:io selected.entry.mail.inbox[0] merge value {has_unclaimed_items:0b,total_unclaimed_items:0b}
execute if data storage pandamium:local functions."pandamium:impl/queue/actions/cache_mail/main".items[0] run data modify storage pandamium:local functions."pandamium:impl/queue/actions/cache_mail/main".items[].is_private set value 1b
execute if data storage pandamium:local functions."pandamium:impl/queue/actions/cache_mail/main".items[0] run data modify storage pandamium:local functions."pandamium:impl/queue/actions/cache_mail/main".items[].private.id.missing_user_id set value 1b
execute if data storage pandamium:local functions."pandamium:impl/queue/actions/cache_mail/main".items[{private:{id:{missing_user_id:1b}}}] run data modify storage pandamium:local functions."pandamium:impl/queue/actions/cache_mail/main".items[{private:{id:{missing_user_id:1b}}}].is_private set value 0b
$execute if data storage pandamium:local functions."pandamium:impl/queue/actions/cache_mail/main".items[{is_private:1b,private:{id:$(user_id)}}] run data modify storage pandamium:local functions."pandamium:impl/queue/actions/cache_mail/main".items[{is_private:1b,private:{id:$(user_id)}}].is_private set value 0b
$execute if data storage pandamium:local functions."pandamium:impl/queue/actions/cache_mail/main".items[{is_private:1b,private:$(user_id)}] run data modify storage pandamium:local functions."pandamium:impl/queue/actions/cache_mail/main".items[{is_private:1b,private:$(user_id)}].is_private set value 0b
data remove storage pandamium:local functions."pandamium:impl/queue/actions/cache_mail/main".items[{is_private:1b}]
execute store result score <unclaimed_item_slots> variable store result storage pandamium.db.player_cache:io selected.entry.mail.inbox[0].total_unclaimed_items byte 1 store success storage pandamium.db.player_cache:io selected.entry.mail.inbox[0].has_unclaimed_items byte 1 if data storage pandamium:local functions."pandamium:impl/queue/actions/cache_mail/main".items[]
$scoreboard players operation @a[scores={id=$(user_id)},limit=1] mail_data.unclaimed_items += <unclaimed_item_slots> variable
