function pandamium:utils/database/click_events/load_new
function pandamium:utils/database/click_events/modify/set_owner/from_self
function pandamium:utils/database/click_events/modify/set_trigger {trigger: "search_players"}
data modify storage pandamium.db.click_events:io selected.entry.data.origin_trigger set from storage pandamium:temp origin_trigger
data modify storage pandamium.db.click_events:io selected.entry.data.search set value ""

execute in pandamium:staff_world run data modify block 3 0 0 front_text.messages[0] set value '{"storage":"pandamium.db.click_events:io","nbt":"selected.entry.click_event_root","interpret":true,"color":"red","extra":["[Clear]"],"hoverEvent":{"action":"show_text","contents":{"text":"Click to delete all characters from your search","color":"white","extra":[{"text":"\\n\\nNew search would be: \\"","color":"gray","extra":["\\""]}]}}}'
execute in pandamium:staff_world run data modify storage pandamium:temp keyboard_buttons.clear set from block 3 0 0 front_text.messages[0]

function pandamium:utils/database/click_events/save
