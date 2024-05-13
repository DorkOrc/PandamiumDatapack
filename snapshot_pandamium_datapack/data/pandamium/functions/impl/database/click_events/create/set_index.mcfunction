# arguments: click_event_id

$execute store result storage pandamium.db.click_events:io selected.index int 1 store result storage pandamium.db.click_events:data click_event_id_indexes."$(click_event_id)" int 1 run data get storage pandamium.db.click_events:data entries
