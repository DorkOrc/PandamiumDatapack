# [from]
execute if score @s staff_perms matches 2.. run function pandamium:utils/database/click_event/load_new
execute if score @s staff_perms matches 2.. run function pandamium:utils/database/click_event/modify/set_owner/from_self
execute if score @s staff_perms matches 2.. run function pandamium:utils/database/click_event/modify/set_trigger {trigger: "player_info_v2"}
execute if score @s staff_perms matches 2.. run data modify storage pandamium.db:click_events selected.entry.data.type set value "teleport"
execute if score @s staff_perms matches 2.. run data modify storage pandamium.db:click_events selected.entry.data.position set from storage pandamium:temp entries[0].from
execute if score @s staff_perms matches 2.. run data modify storage pandamium.db:click_events selected.entry.data.username set from storage pandamium.db:players selected.entry.username
execute if score @s staff_perms matches 2.. run data modify storage pandamium:temp from_click_event set from storage pandamium.db:click_events selected.entry.click_event_root
execute if score @s staff_perms matches 2.. run function pandamium:utils/database/click_event/save

execute store result score <dimension> variable run data get storage pandamium:temp entries[0].from[3]
function pandamium:utils/get/dimension_name/from_score
data modify storage pandamium:temp from_dimension set from storage pandamium:temp dimension_name
data remove storage pandamium:temp entries[0].from[3]

# [to]
execute if score @s staff_perms matches 2.. run function pandamium:utils/database/click_event/load_new
execute if score @s staff_perms matches 2.. run function pandamium:utils/database/click_event/modify/set_owner/from_self
execute if score @s staff_perms matches 2.. run function pandamium:utils/database/click_event/modify/set_trigger {trigger: "player_info_v2"}
execute if score @s staff_perms matches 2.. run data modify storage pandamium.db:click_events selected.entry.data.type set value "teleport"
execute if score @s staff_perms matches 2.. run data modify storage pandamium.db:click_events selected.entry.data.position set from storage pandamium:temp entries[0].to
execute if score @s staff_perms matches 2.. run data modify storage pandamium.db:click_events selected.entry.data.username set from storage pandamium.db:players selected.entry.username
execute if score @s staff_perms matches 2.. run data modify storage pandamium:temp to_click_event set from storage pandamium.db:click_events selected.entry.click_event_root
execute if score @s staff_perms matches 2.. run function pandamium:utils/database/click_event/save

execute store result score <dimension> variable run data get storage pandamium:temp entries[0].from[3]
function pandamium:utils/get/dimension_name/from_score
data modify storage pandamium:temp to_dimension set from storage pandamium:temp dimension_name
data remove storage pandamium:temp entries[0].to[3]

# get info
execute store result score <hour_id> variable run data get storage pandamium:temp entries[0].hour_id
function pandamium:utils/get/date/from_hour_id_score

tellraw @s[scores={staff_perms=..1}] [{"text":"• ","color":"gray"},{"storage":"pandamium:temp","nbt":"entries[0].source","color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"unformatted entry data:\n","color":"gray"},{"storage":"pandamium:temp","nbt":"entries[0]","color":"white"},{"text":"\nunformatted date:\n","color":"gray"},{"storage":"pandamium:temp","nbt":"date","color":"white"}]}}," ",{"text":"[FROM]","color":"yellow","hoverEvent":{"action":"show_text","contents":[{"storage":"pandamium:temp","nbt":"entries[0].from[]","separator":" ","color":"yellow"}," in ",{"storage":"pandamium:temp","nbt":"from_dimension"}]}}," ",{"text":"[TO]","color":"green","hoverEvent":{"action":"show_text","contents":[{"storage":"pandamium:temp","nbt":"entries[0].to[]","separator":" ","color":"green"}," in ",{"storage":"pandamium:temp","nbt":"to_dimension"}]}}]
tellraw @s[scores={staff_perms=2..}] [{"text":"• ","color":"gray"},{"storage":"pandamium:temp","nbt":"entries[0].source","color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"unformatted entry data:\n","color":"gray"},{"storage":"pandamium:temp","nbt":"entries[0]","color":"white"},{"text":"\nunformatted date:\n","color":"gray"},{"storage":"pandamium:temp","nbt":"date","color":"white"}]}}," ",[{"storage":"pandamium:temp","nbt":"from_click_event","interpret":true},{"text":"[FROM]","color":"yellow","hoverEvent":{"action":"show_text","contents":[{"storage":"pandamium:temp","nbt":"entries[0].from[]","separator":" ","color":"yellow"}," in ",{"storage":"pandamium:temp","nbt":"from_dimension"},"\n\nClick to teleport there"]}}]," ",[{"storage":"pandamium:temp","nbt":"to_click_event","interpret":true},{"text":"[TO]","color":"green","hoverEvent":{"action":"show_text","contents":[{"storage":"pandamium:temp","nbt":"entries[0].to[]","separator":" ","color":"green"}," in ",{"storage":"pandamium:temp","nbt":"to_dimension"},"\n\nClick to teleport there"]}}]]

data remove storage pandamium:temp entries[0]
execute if data storage pandamium:temp entries[0] run function pandamium:triggers/player_info_v2/print_teleport_history_menu/loop
