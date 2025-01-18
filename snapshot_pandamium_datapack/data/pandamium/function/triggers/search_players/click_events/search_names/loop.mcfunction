data modify storage pandamium:templates macro.username.username set from storage pandamium:temp results[0]
function pandamium:utils/database/players/load/from_username with storage pandamium:templates macro.username

data modify storage pandamium:temp display_name set value {text:"<Invalid Username: ",color:"red",extra:[{storage:"pandamium:templates",nbt:"macro.username.username"},{text:">"}]}
function pandamium:utils/get/display_name/from_id with storage pandamium.db.players:io selected.entry

execute if data storage pandamium:temp origin_trigger in pandamium:staff_world run function pandamium:triggers/search_players/click_events/search_names/set_origin_trigger_format/main with storage pandamium.db.players:io selected.entry
data modify storage pandamium:temp display_results append from storage pandamium:temp display_name

data remove storage pandamium:temp results[0]
execute if data storage pandamium:temp results[0] run function pandamium:triggers/search_players/click_events/search_names/loop
