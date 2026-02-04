# arguments: uuid

data remove storage pandamium.db.players:io selected

$data modify storage pandamium:local functions."pandamium:utils/database/players/load/from_uuid".uuid set value $(uuid)
data modify storage pandamium:local functions."pandamium:utils/database/players/load/from_uuid".uuid_0 set from storage pandamium:local functions."pandamium:utils/database/players/load/from_uuid".uuid[0]
data modify storage pandamium:local functions."pandamium:utils/database/players/load/from_uuid".uuid_1 set from storage pandamium:local functions."pandamium:utils/database/players/load/from_uuid".uuid[1]
data modify storage pandamium:local functions."pandamium:utils/database/players/load/from_uuid".uuid_2 set from storage pandamium:local functions."pandamium:utils/database/players/load/from_uuid".uuid[2]
data modify storage pandamium:local functions."pandamium:utils/database/players/load/from_uuid".uuid_3 set from storage pandamium:local functions."pandamium:utils/database/players/load/from_uuid".uuid[3]
function pandamium:impl/database/players/load/from_uuid with storage pandamium:local functions."pandamium:utils/database/players/load/from_uuid"
execute if data storage pandamium.db.players:io selected.index run function pandamium:impl/database/players/load/main with storage pandamium.db.players:io selected

execute unless data storage pandamium.db.players:io selected.entry run data remove storage pandamium.db.players:io selected

execute if data storage pandamium.db.players:io selected.entry run function pandamium:impl/database/players/patch/main
