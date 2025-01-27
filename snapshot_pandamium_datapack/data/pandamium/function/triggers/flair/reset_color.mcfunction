execute unless data storage pandamium.db.players:io selected.entry.data.flair run return run tellraw @s [{text:"[Flair]",color:"dark_red"},{text:" You must choose a flair ",color:"red",extra:[{text:"type",bold:true},{text:" before you can choose a flair "},{text:"colour",bold:true},{text:"!"}]}]

data remove storage pandamium.db.players:io selected.entry.data.flair.color
function pandamium:utils/database/players/save

tellraw @s [{text:"[Flair]",color:"dark_green"},{text:" Reset flair colour! ",color:"green"},{text:"[🔁]",color:"aqua",hover_event:{action:"show_text",value:[{text:"Click to refresh menu previews",color:"aqua"}]},click_event:{action:"run_command",command:"trigger flair"}}]
