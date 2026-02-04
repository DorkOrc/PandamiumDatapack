function pandamium:utils/database/players/load/from_patreon_id with storage pandamium:temp users[-1]
function pandamium:supporters/update_supporter_ranks/with_username with storage pandamium.db.players:io selected.entry

data remove storage pandamium:temp users[-1]
execute if data storage pandamium:temp users[0] run function pandamium:supporters/update_supporter_ranks/loop
