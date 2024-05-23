# arguments: click_event_id

data remove storage pandamium.db.click_events:io selected

$execute if data storage pandamium.db.click_events:data click_event_id_indexes."$(click_event_id)" store result storage pandamium.db.click_events:io selected.index int 1 store result score <index> variable run data get storage pandamium.db.click_events:data click_event_id_indexes."$(click_event_id)"
execute unless data storage pandamium.db.click_events:io selected.index run return fail
function pandamium:impl/database/click_events/load/main with storage pandamium.db.click_events:io selected
execute unless data storage pandamium.db.click_events:io selected.entry run data remove storage pandamium.db.click_events:io selected

return run scoreboard players get <index> variable
