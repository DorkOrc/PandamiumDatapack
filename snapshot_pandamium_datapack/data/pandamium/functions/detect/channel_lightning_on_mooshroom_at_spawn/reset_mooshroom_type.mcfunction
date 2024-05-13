function pandamium:utils/database/entities/load/self

execute unless data storage pandamium.db.entities:io selected.entry.data.mooshroom_type if data entity @s {Type:"brown"} run data modify storage pandamium.db.entities:io selected.entry.data.mooshroom_type set value "red"
execute unless data storage pandamium.db.entities:io selected.entry.data.mooshroom_type if data entity @s {Type:"red"} run data modify storage pandamium.db.entities:io selected.entry.data.mooshroom_type set value "brown"

data modify entity @s Type set from storage pandamium.db.entities:io selected.entry.data.mooshroom_type

function pandamium:utils/database/entities/save
