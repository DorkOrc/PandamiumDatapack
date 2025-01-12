execute unless data storage pandamium.db.players:io selected.entry.data.tp_history run return run tellraw @s [{text:"Teleport History: ",color:"gold"},{text:"[🗺]",color:"dark_gray",hover_event:{action:"show_text",text:{text:"none",color:"gray"}}}]

data modify storage pandamium:temp components set value []

data modify storage pandamium:temp entries set value []
data modify storage pandamium:temp entries append from storage pandamium.db.players:io selected.entry.data.tp_history[]

execute in pandamium:staff_world run function pandamium:triggers/player_info/print_teleport_history/loop

tellraw @s [{text:"Teleport History: ",color:"gold"},{text:"[🗺]",color:"dark_gray",hover_event:{action:"show_text",text:[{text:""},{storage:"pandamium:temp",nbt:"components[]",interpret:true,separator:"\n",font:"uniform"}]}}]
