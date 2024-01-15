# prune unsent entries (unless they are saved as drafts)
data remove storage pandamium.db:mail entries[{sent:0b,draft:0b}]

# reindex
data remove storage pandamium.db:mail mail_id_indexes
execute store result score <total_entries> variable run data get storage pandamium.db:mail entries
data modify storage pandamium:temp arguments set value {}
execute store result storage pandamium:temp arguments.index int 1 run scoreboard players set <index> variable 0
function pandamium:impl/database/mail/prune_and_reindex/loop with storage pandamium:temp arguments
