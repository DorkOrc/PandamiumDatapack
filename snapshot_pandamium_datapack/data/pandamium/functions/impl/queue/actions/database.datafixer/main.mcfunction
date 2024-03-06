#{
#	action: "database.datafixer",
#	mail_ids: [INT, ...]
#}

# process top entry
execute store result storage pandamium:templates macro.mail_id.mail_id int 1 run data get storage pandamium:queue selected.entry.mail_ids[-1]
function pandamium:utils/database/mail/load/from_mail_id with storage pandamium:templates macro.mail_id

execute store result storage pandamium:templace macro.index.index int 1 run scoreboard players set <queue.database.datafixer.index> variable 0
function pandamium:impl/queue/actions/database.datafixer/loop with storage pandamium:templace macro.index

function pandamium:utils/database/mail/save

# continue
data remove storage pandamium:queue selected.entry.mail_ids[-1]
execute if data storage pandamium:queue selected.entry.mail_ids[0] run return run function pandamium:impl/queue/utils/continue

# end
tellraw @a[scores={send_extra_debug_info=2..}] {"color":"gray","italic":true,"text":"[Pandamium: Datafixer finished]"}
