execute unless data storage pandamium.db.players:io selected run return fail

# check if already patched
execute store result score <patch_version> variable run data get storage pandamium.db.players:io selected.entry.version
execute if score <patch_version> variable >= <players_db_patch_version> global run return 1

# do patch
function pandamium:impl/database/players/modify/patch/with_username with storage pandamium.db.players:io selected.entry

# resolve as patched
execute store result storage pandamium.db.players:io selected.entry.version int 1 run scoreboard players get <players_db_patch_version> global
return 1
