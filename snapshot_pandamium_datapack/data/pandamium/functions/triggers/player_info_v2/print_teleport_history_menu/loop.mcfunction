execute store result score <dimension> variable run data get storage pandamium:temp entries[0].from[3]
function pandamium:utils/get/dimension_name/from_score
data modify storage pandamium:temp from_dimension set from storage pandamium:temp dimension_name
data remove storage pandamium:temp entries[0].from[3]

execute store result score <dimension> variable run data get storage pandamium:temp entries[0].to[3]
function pandamium:utils/get/dimension_name/from_score
data modify storage pandamium:temp to_dimension set from storage pandamium:temp dimension_name
data remove storage pandamium:temp entries[0].to[3]

execute store result score <hour_id> variable run data get storage pandamium:temp entries[0].hour_id
function pandamium:utils/get/date/from_hour_id_score

tellraw @s [{"text":"• ","color":"gray"},{"storage":"pandamium:temp","nbt":"entries[0].source","color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"unformatted entry data:\n","color":"gray"},{"storage":"pandamium:temp","nbt":"entries[0]","color":"white"},{"text":"\nunformatted date:\n","color":"gray"},{"storage":"pandamium:temp","nbt":"date","color":"white"}]}}," ",{"text":"[FROM]","color":"yellow","hoverEvent":{"action":"show_text","contents":[{"storage":"pandamium:temp","nbt":"entries[0].from[]","separator":" ","color":"yellow"}," in ",{"storage":"pandamium:temp","nbt":"from_dimension"}]}}," ",{"text":"[TO]","color":"green","hoverEvent":{"action":"show_text","contents":[{"storage":"pandamium:temp","nbt":"entries[0].to[]","separator":" ","color":"green"}," in ",{"storage":"pandamium:temp","nbt":"to_dimension"}]}}," ",{"text":"[→]","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"Unfinished.","color":"gray"}]}}]
# eventually do the teleport buttons with the menu caching thing

data remove storage pandamium:temp entries[0]
execute if data storage pandamium:temp entries[0] run function pandamium:triggers/player_info_v2/print_teleport_history_menu/loop
