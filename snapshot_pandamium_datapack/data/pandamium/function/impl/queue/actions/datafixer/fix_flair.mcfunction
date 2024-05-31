data modify storage pandamium:text input set from storage pandamium.db.players:io selected.entry.data.flair

function pandamium:utils/text/get_compound

data modify storage pandamium.db.players:io selected.entry.data.flair set from storage pandamium:text compound

function pandamium:impl/queue/actions/datafixer/set_json with storage pandamium:text {}

function pandamium:utils/database/players/save
