# store lowercase_username into entry
data modify storage do:io input set from storage pandamium.db.players:io selected.entry.username
function do:str/lower
data modify storage pandamium.db.players:io selected.entry.lowercase_username set from storage do:io output

# update lowercase_username_indexes map
function pandamium:impl/database/players/patch/versions/version_5_and_6/update_indexes with storage pandamium.db.players:io selected.entry
