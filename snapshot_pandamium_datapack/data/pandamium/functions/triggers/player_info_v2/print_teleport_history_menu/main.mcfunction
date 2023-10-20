execute unless data storage pandamium.db:players selected.entry.data.tp_history run return run tellraw @s [{"text":"Teleport History: ","color":"gold"},{"text":"[🗺]","color":"dark_gray","hoverEvent":{"action":"show_text","contents":{"text":"none","color":"gray"}}}]

data modify storage pandamium:temp components set value []

data modify storage pandamium:temp entries set value []
data modify storage pandamium:temp entries append from storage pandamium.db:players selected.entry.data.tp_history[]

execute in pandamium:staff_world run function pandamium:triggers/player_info_v2/print_teleport_history_menu/loop

tellraw @s [{"text":"Teleport History: ","color":"gold"},{"text":"[🗺]","color":"dark_gray","hoverEvent":{"action":"show_text","contents":["",{"storage":"pandamium:temp","nbt":"components[]","interpret":true,"separator":"\n","font":"uniform"}]}}]
