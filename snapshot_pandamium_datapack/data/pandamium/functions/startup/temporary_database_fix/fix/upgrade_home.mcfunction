# arguments: index, home

$data modify storage pandamium:text input set from storage pandamium.db:players entries[$(index)].data.homes.$(home).name
function pandamium:utils/text/flatten_json_to_alphanumeric
$data modify storage pandamium:temp arguments set value {index:$(index),home:$(home)}
data modify storage pandamium:temp arguments.plain_name set from storage pandamium:text output
function pandamium:startup/temporary_database_fix/fix/upgrade_home_check with storage pandamium:temp arguments

$data modify storage pandamium:temp compare set from storage pandamium:temp homes_before.$(home).plain_name
$execute store success score <different> variable run data modify storage pandamium:temp compare set from storage pandamium.db:players entries[$(index)].data.homes.$(home).plain_name
$execute if score <different> variable matches 1 run tellraw @a[scores={send_extra_debug_info=1}] [{"text":"[dataFixer: Upgraded home $(home) ID for entry at index $(index):\n [","color":"gray","italic":true},{"storage":"pandamium:temp","nbt":"homes_before.$(home).plain_name","italic":false},"] -> [",{"storage":"pandamium:temp","nbt":"compare","italic":false},"] from ",[{"text":"","color":"white","italic":true},{"storage":"pandamium.db:players","nbt":"entries[$(index)].data.homes.$(home).name","interpret":true}],"]"]
