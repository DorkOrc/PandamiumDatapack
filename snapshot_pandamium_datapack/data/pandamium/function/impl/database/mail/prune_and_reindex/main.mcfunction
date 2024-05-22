# prune unsent entries (unless they are saved as drafts)
data remove storage pandamium.db.mail:data entries[{sent:0b,draft:0b}]

# prune fully-read ephemeral messages
data modify storage pandamium.db.mail:data entries[{sent:1b,ephemeral:1b,data:{completed_ephemeral:1b}}].all_read set value 1b
data remove storage pandamium.db.mail:data entries[{sent:1b,ephemeral:1b,receivers:[{read:0b}]}].all_read
data remove storage pandamium.db.mail:data entries[{sent:1b,ephemeral:1b,all_read:1b}]

# reindex
data remove storage pandamium.db.mail:data mail_id_indexes
execute store result score <total_entries> variable run data get storage pandamium.db.mail:data entries
data modify storage pandamium:temp arguments set value {}
execute store result storage pandamium:temp arguments.index int 1 run scoreboard players set <index> variable 0
function pandamium:impl/database/mail/prune_and_reindex/loop with storage pandamium:temp arguments
