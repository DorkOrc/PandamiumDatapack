# arguments: index, home

$data modify storage pandamium:text input set from storage pandamium.db:players entries[$(index)].data.homes.$(home).name
function pandamium:utils/text/flatten_json_to_alphanumeric
$data modify storage pandamium:temp arguments set value {index:$(index),home:$(home)}
data modify storage pandamium:temp arguments.plain_name set from storage pandamium:text output
function pandamium:startup/temporary_database_fix/fix/upgrade_home_check with storage pandamium:temp arguments
