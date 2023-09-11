# arguments: index, home

$data modify storage pandamium:text input set from storage pandamium.db:players entries[$(index)].data.homes.$(home).name
function pandamium:utils/text/flatten_json_to_alphanumeric
$data modify storage pandamium.db:players entries[$(index)].data.homes.$(home).plain_name set from storage pandamium:text output
