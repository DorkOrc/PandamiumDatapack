execute unless data storage pandamium.db.entities:io selected.entry.data.name run return 0

data modify storage pandamium:text input set from storage pandamium.db.entities:io selected.entry.data.name
function pandamium:utils/text/update_pre_1_21_5_text_component
data modify storage pandamium.db.entities:io selected.entry.data.name set from storage pandamium:text output

execute if data storage pandamium.db.entities:io selected.entry.data{name:""} run data remove storage pandamium.db.entities:io selected.entry.data.name
