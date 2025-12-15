# fail if already patched
execute store result score <entry_data_version_incremented> variable run data get storage pandamium.db.players:io selected.entry.version
scoreboard players add <entry_data_version_incremented> variable 1
execute if score <entry_data_version_incremented> variable > <db.players.latest_data_version> global run return fail

# do patch
execute if score <entry_data_version_incremented> variable < <db.players.latest_data_version> global run function pandamium:impl/database/players/patch/legacy_versions
execute if score <entry_data_version_incremented> variable <= <db.players.latest_data_version> global run \
    function pandamium:impl/database/players/patch/versions/version_5_and_6/main with storage pandamium.db.players:io selected.entry

# resolve as patched and save without deselecting
execute store result storage pandamium.db.players:io selected.entry.version int 1 run scoreboard players get <db.players.latest_data_version> global
function pandamium:impl/database/players/save/replace_from_selected with storage pandamium.db.players:io selected
return 1
