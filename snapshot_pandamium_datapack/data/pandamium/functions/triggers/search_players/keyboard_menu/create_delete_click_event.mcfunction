function pandamium:utils/database/click_events/load_new
function pandamium:utils/database/click_events/modify/set_owner/from_self
function pandamium:utils/database/click_events/modify/set_trigger {trigger: "search_players"}
data modify storage pandamium.db.click_events:io selected.entry.data.origin_trigger set from storage pandamium:temp origin_trigger
data modify storage pandamium.db.click_events:io selected.entry.data.search set string storage pandamium:templates macro.search.search 0 -1

execute in pandamium:staff_world run data modify block 3 0 0 front_text.messages[0] set value '{"storage":"pandamium.db.click_events:io","nbt":"selected.entry.click_event_root","interpret":true,"color":"red","extra":["[←]"],"hoverEvent":{"action":"show_text","contents":{"text":"Click to delete one character from your search","color":"white","extra":[{"text":"\\n\\nNew search would be: \\"","color":"gray","extra":[{"storage":"pandamium.db:click_events","nbt":"selected.entry.data.search"},"\\""]}]}}}'
execute in pandamium:staff_world run data modify storage pandamium:temp keyboard_buttons.delete set from block 3 0 0 front_text.messages[0]

function pandamium:utils/database/click_events/save
