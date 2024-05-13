# arguments: index

$execute unless data storage pandamium:temp results[$(index)] run return 0

$data modify storage pandamium:templates macro.username.username set from storage pandamium:temp results[$(index)]
function pandamium:utils/database/players/load/from_username with storage pandamium:templates macro.username

data modify storage pandamium:temp display_name set value '{"text":"Invalid Username","color":"red"}'
function pandamium:utils/get/display_name/from_id with storage pandamium.db.players:io selected.entry

execute if data storage pandamium:temp origin_trigger in pandamium:staff_world run function pandamium:triggers/search_players/click_events/search_names/set_origin_trigger_format/main with storage pandamium.db.players:io selected.entry
$data modify storage pandamium:temp results[$(index)] set from storage pandamium:temp display_name

execute store result storage pandamium:templates macro.index.index int 1 run scoreboard players add <index> variable 1
function pandamium:triggers/search_players/click_events/search_names/loop with storage pandamium:templates macro.index
