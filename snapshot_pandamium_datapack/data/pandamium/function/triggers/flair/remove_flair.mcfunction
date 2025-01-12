execute unless data storage pandamium.db.players:io selected.entry.data.flair run return run tellraw @s [{text:"[Flair]",color:"dark_red"},{text:" Nothing changed!",color:"red"}]

data remove storage pandamium.db.players:io selected.entry.data.flair
function pandamium:utils/database/players/save

tellraw @s [{text:"[Flair]",color:"dark_green"},{text:" Removed flair! ",color:"green"},{text:"[🔁]",color:"aqua",hover_event:{action:"show_text",text:[{text:"Click to refresh menu previews",color:"aqua"}]},click_event:{action:"run_command",command:"trigger flair"}}]
