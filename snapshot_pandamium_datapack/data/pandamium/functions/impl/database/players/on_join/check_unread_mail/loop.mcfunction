# arguments: index, user_id

$execute unless data storage pandamium.db:players selected.entry.data.mail.inbox[$(index)] run return 0

$function pandamium:utils/database/mail/load/from_mail_id with storage pandamium.db:players selected.entry.data.mail.inbox[$(index)]
$execute store result score <read> variable run data get storage pandamium.db:mail selected.entry.receivers[{id:$(user_id)}].read
execute if score <read> variable matches 0 run scoreboard players add <total_unread_mails> variable 1

execute store result storage pandamium:temp arguments.index int 1 run scoreboard players add <inbox_index> variable 1
execute if score <inbox_index> variable < <inbox_length> variable run function pandamium:impl/database/players/on_join/check_unread_mail/loop with storage pandamium:temp arguments
