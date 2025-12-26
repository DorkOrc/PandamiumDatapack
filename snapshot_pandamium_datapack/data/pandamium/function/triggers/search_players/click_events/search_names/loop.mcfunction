data modify storage pandamium:local functions."pandamium:triggers/search_players/click_events/search_names/loop".username set from storage pandamium:temp results[0]
data remove storage pandamium.db.players:io selected
function pandamium:utils/database/players/load/from_username with storage pandamium:local functions."pandamium:triggers/search_players/click_events/search_names/loop"

data remove storage pandamium:temp display_name
function pandamium:utils/get/display_name/from_id with storage pandamium.db.players:io selected.entry
execute unless data storage pandamium:temp display_name run data modify storage pandamium:temp display_name set value [{color:"red",text:"<Invalid Username: "},{storage:"pandamium:local",nbt:'functions."pandamium:triggers/search_players/click_events/search_names/loop".username'},">"]

execute if data storage pandamium:temp origin_trigger in pandamium:staff_world run function pandamium:triggers/search_players/click_events/search_names/set_origin_trigger_format/main with storage pandamium.db.players:io selected.entry
data modify storage pandamium:temp display_results append from storage pandamium:temp display_name

data remove storage pandamium:temp results[0]
execute if data storage pandamium:temp results[0] run function pandamium:triggers/search_players/click_events/search_names/loop
