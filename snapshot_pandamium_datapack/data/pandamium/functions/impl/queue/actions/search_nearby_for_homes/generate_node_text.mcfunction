# arguments: id

function pandamium:utils/database/click_events/load_new
data modify storage pandamium.db.click_events:io selected.entry.owner.id set from storage pandamium:queue selected.entry.source
function pandamium:utils/database/click_events/modify/set_trigger {trigger: "search_nearby"}
data modify storage pandamium.db.click_events:io selected.entry.data.type set value "teleport"
data modify storage pandamium.db.click_events:io selected.entry.data.home_data.x set from storage pandamium:queue selected.entry.homes[-1].xyz[0]
data modify storage pandamium.db.click_events:io selected.entry.data.home_data.y set from storage pandamium:queue selected.entry.homes[-1].xyz[1]
data modify storage pandamium.db.click_events:io selected.entry.data.home_data.z set from storage pandamium:queue selected.entry.homes[-1].xyz[2]
data modify storage pandamium.db.click_events:io selected.entry.data.home_data.dimension set from storage pandamium:queue selected.entry.origin.dimension
data modify storage pandamium.db.click_events:io selected.entry.data.home_data.owner.id set from storage pandamium:queue selected.entry.homes[-1].data[0]
data modify storage pandamium.db.click_events:io selected.entry.data.home_data.home_slot set from storage pandamium:queue selected.entry.homes[-1].data[1]

$data modify block 3 0 0 front_text.messages[1] set value '{"text":"","extra":[{"text":"• ","color":"gray"},{"text":"[👁]","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger homes set $(id)"},"hoverEvent":{"action":"show_text","contents":{"color":"yellow","text":"Click to view ","extra":[{"storage":"pandamium:temp","nbt":"display_name","interpret":true},"\'s homes"]}}}," ",{"storage":"pandamium.db.click_events:io","nbt":"selected.entry.click_event_root","interpret":true,"extra":[{"text":"[→]","color":"blue","hoverEvent":{"action":"show_text","contents":{"color":"blue","text":"Click to teleport to ","extra":[{"storage":"pandamium:temp","nbt":"display_name","interpret":true},"\'s Home ",{"storage":"pandamium:queue","nbt":"selected.entry.homes[-1].data[1]"}]}}}]}," ",{"color":"aqua","text":"","extra":[{"storage":"pandamium:temp","nbt":"display_name","interpret":true}]},{"text":"\'s ","color":"gray"},"Home ",{"storage":"pandamium:queue","nbt":"selected.entry.homes[-1].data[1]"},{"color":"gray","text":" ","extra":[{"score":{"name":"<distance>","objective":"variable"}},"m away "]},{"text":"ℹ","color":"blue","hoverEvent":{"action":"show_text","contents":{"storage":"pandamium:queue","nbt":"selected.entry.homes[-1].xyz[]","separator":" ","extra":[{"text":"\\nClick to copy to clipboard\\nShift+Click to insert into chat","color":"gray"}]}},"clickEvent":{"action":"copy_to_clipboard","value":"$(x) $(y) $(z)"},"insertion":"$(x) $(y) $(z)"}]}'
data modify entity @s data.text set from block 3 0 0 front_text.messages[1]

function pandamium:utils/database/click_events/save
