data modify storage pandamium:text input set value [{text:"• ",color:"gray"},{storage:"pandamium:temp",nbt:"entries[0].source",color:"white"}," FROM ",{storage:"pandamium:temp",nbt:"entries[0].from[]",separator:" ",color:"yellow"}," TO ",{storage:"pandamium:temp",nbt:"entries[0].to[]",separator:" ",color:"green"}]
function pandamium:utils/text/input/resolve
data modify storage pandamium:temp components append from storage pandamium:text input

data remove storage pandamium:temp entries[0]
execute if data storage pandamium:temp entries[0] run function pandamium:triggers/player_info/print_teleport_history/loop
