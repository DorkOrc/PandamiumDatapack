# arguments: search, character

function pandamium:utils/database/click_events/load_new
function pandamium:utils/database/click_events/modify/set_owner/from_self
function pandamium:utils/database/click_events/modify/set_trigger {trigger: "search_players"}
data modify storage pandamium.db.click_events:io selected.entry.data.origin_trigger set from storage pandamium:temp origin_trigger
$data modify storage pandamium.db.click_events:io selected.entry.data.search set value "$(search)$(character)"

$data modify storage pandamium:text input set value {storage:"pandamium.db.click_events:io",nbt:"selected.entry.click_event_root",interpret:true,color:"white",extra:[{text:"["},{storage:"pandamium:dictionary",nbt:"lowercase_to_uppercase_map.$(character)",bold:true},{text:"]"}],hover_event:{action:"show_text",value:{text:'Click to add "',color:"white",extra:[{storage:"pandamium:dictionary",nbt:"lowercase_to_uppercase_map.$(character)"},{text:'" to your search\n\n'},{text:'New search would be: "$(search)$(character)"',color:"gray"}]}}}
function pandamium:utils/text/input/resolve
$data modify storage pandamium:temp keyboard_buttons."$(character)" set from storage pandamium:text input

function pandamium:utils/database/click_events/save
