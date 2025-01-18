function pandamium:utils/database/click_events/load_new
function pandamium:utils/database/click_events/modify/set_owner/from_self
function pandamium:utils/database/click_events/modify/set_trigger {trigger: "search_players"}
data modify storage pandamium.db.click_events:io selected.entry.data.origin_trigger set from storage pandamium:temp origin_trigger
data modify storage pandamium.db.click_events:io selected.entry.data.search set string storage pandamium:templates macro.search.search 0 -1

execute in pandamium:staff_world run loot replace block 5 0 0 contents loot {pools:[{rolls:1,entries:[{type:"minecraft:item",name:"minecraft:stone"}]}],functions:[{function:"minecraft:set_name",entity:"this",name:{storage:"pandamium.db.click_events:io",nbt:"selected.entry.click_event_root",interpret:true,color:"red",extra:["[←]"],hover_event:{action:"show_text",value:{text:"Click to delete one character from your search",color:"white",extra:[{text:'\n\nNew search would be: "',color:"gray",extra:[{storage:"pandamium.db:click_events",nbt:"selected.entry.data.search"},{text:'"'}]}]}}}}]}
execute in pandamium:staff_world run data modify storage pandamium:temp keyboard_buttons.delete set from block 5 0 0 item.components.minecraft:custom_name

function pandamium:utils/database/click_events/save
