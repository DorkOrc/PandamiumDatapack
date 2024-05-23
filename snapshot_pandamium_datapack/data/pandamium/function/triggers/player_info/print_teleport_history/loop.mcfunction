data modify block 3 0 0 front_text.messages[0] set value '[{"text":"• ","color":"gray"},{"storage":"pandamium:temp","nbt":"entries[0].source","color":"white"}," FROM ",{"storage":"pandamium:temp","nbt":"entries[0].from[]","separator":" ","color":"yellow"}," TO ",{"storage":"pandamium:temp","nbt":"entries[0].to[]","separator":" ","color":"green"}]'
data modify storage pandamium:temp components append from block 3 0 0 front_text.messages[0]

data remove storage pandamium:temp entries[0]
execute if data storage pandamium:temp entries[0] run function pandamium:triggers/player_info/print_teleport_history/loop
