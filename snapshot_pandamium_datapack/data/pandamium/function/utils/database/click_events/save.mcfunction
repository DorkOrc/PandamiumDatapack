execute unless data storage pandamium.db.click_events:io selected.entry run return run data remove storage pandamium.db.click_events:io selected
execute unless data storage pandamium.db.click_events:io selected.index run return run data remove storage pandamium.db.click_events:io selected

execute store result storage pandamium:templates macro.index.index int 1 run data get storage pandamium.db.click_events:io selected.index
function pandamium:impl/database/click_events/save/replace_from_selected with storage pandamium:templates macro.index

data remove storage pandamium.db.click_events:io selected
