function pandamium:utils/database/click_events/load_new
function pandamium:utils/database/click_events/modify/set_owner/from_self
function pandamium:utils/database/click_events/modify/set_trigger {trigger: "search_players"}
data modify storage pandamium.db.click_events:io selected.entry.data.origin_trigger set from storage pandamium:temp origin_trigger
data modify storage pandamium.db.click_events:io selected.entry.data.search set value ""

data modify storage pandamium:text input set value {storage:"pandamium.db.click_events:io",nbt:"selected.entry.click_event_root",interpret:true,color:"red",extra:["[Clear]"],hover_event:{action:"show_text",value:{text:"Click to delete all characters from your search",color:"white",extra:[{text:'\n\nNew search would be: "',color:"gray",extra:['"']}]}}}
function pandamium:utils/text/input/resolve
data modify storage pandamium:temp keyboard_buttons.clear set from storage pandamium:text input

function pandamium:utils/database/click_events/save
