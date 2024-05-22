# arguments: home

$data modify storage pandamium:temp arguments set value {home:$(home)}
$data modify storage pandamium:temp arguments.plain_name set from storage pandamium.db.players:io selected.entry.data.homes.$(home).plain_name
function pandamium:impl/database/cache/on_join/add_home_triggers/add_trigger with storage pandamium:temp arguments
