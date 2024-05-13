# arguments: index

$execute store result storage pandamium:temp arguments.mail_id int 1 run data get storage pandamium.db.mail:data entries[$(index)].mail_id
function pandamium:impl/database/mail/prune_and_reindex/with_mail_id with storage pandamium:temp arguments

execute store result storage pandamium:temp arguments.index int 1 run scoreboard players add <index> variable 1
execute if score <index> variable >= <total_entries> variable run return 0
function pandamium:impl/database/mail/prune_and_reindex/loop with storage pandamium:temp arguments
