function pandamium:utils/database/click_events/load_new
function pandamium:utils/database/click_events/modify/set_owner/from_self
function pandamium:utils/database/click_events/modify/set_trigger {trigger: "search_players"}
data modify storage pandamium.db.click_events:io selected.entry.data.origin_trigger set from storage pandamium:temp origin_trigger
data modify storage pandamium.db.click_events:io selected.entry.data.search set string storage pandamium:templates macro.search.search 0 -1

data modify storage do:io input set value {storage:"pandamium.db.click_events:io",nbt:"selected.entry.click_event_root",interpret:true,color:"red",extra:["[←]"],hover_event:{action:"show_text",value:{text:"Click to delete one character from your search",color:"white",extra:[{text:'\n\nNew search would be: "',color:"gray",extra:[{storage:"pandamium.db:click_events",nbt:"selected.entry.data.search",interpret:true},{text:'"'}]}]}}}
function do:text/resolve
data modify storage pandamium:temp keyboard_buttons.delete set from storage do:io output

function pandamium:utils/database/click_events/save
