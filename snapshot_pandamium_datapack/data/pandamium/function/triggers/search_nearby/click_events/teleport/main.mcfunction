execute unless score @s staff_perms matches 2.. run return run tellraw @s [{"text":"[Search Nearby]","color":"dark_red"},{"text":" You do not have permission to perform this action!","color":"red"}]

gamemode spectator @s
function pandamium:utils/teleport/to_object_centred with storage pandamium.db.click_events:io selected.entry.data.home_data

function pandamium:utils/get/display_name/from_id with storage pandamium.db.click_events:io selected.entry.data.home_data.owner
function pandamium:utils/get/dimension_name/from_string_id with storage pandamium.db.click_events:io selected.entry.data.home_data
tellraw @s ["",{"text":"[Search Nearby]","color":"dark_green"},{"text":" Teleported to ","color":"green","extra":[{"color":"aqua","text":"","extra":[{"storage":"pandamium:temp","nbt":"display_name","interpret":true}]},"'s ",{"text":"Home ","color":"aqua","extra":[{"storage":"pandamium.db.click_events:io","nbt":"selected.entry.data.home_data.home_slot"}]},"! ",{"text":"ℹ","color":"blue","hoverEvent":{"action":"show_text","contents":[{"storage":"pandamium.db.click_events:io","nbt":"selected.entry.data.home_data.x"}," ",{"storage":"pandamium.db.click_events:io","nbt":"selected.entry.data.home_data.y"}," ",{"storage":"pandamium.db.click_events:io","nbt":"selected.entry.data.home_data.z"},{"text":" in ","color":"gray"},{"storage":"pandamium:temp","nbt":"dimension_name"}]}}]}]
