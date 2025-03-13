execute unless data storage pandamium.db.players:io selected.entry.data.flair.type run return run tellraw @s [{color:"dark_red",text:"[Flair]"},{color:"red",text:" Nothing changed!"}]

# update cache
function pandamium:utils/database/player_cache/load/self
data remove storage pandamium.db.player_cache:io selected.entry.flair
function pandamium:utils/database/player_cache/save

# save changes
data remove storage pandamium.db.players:io selected.entry.data.flair
function pandamium:utils/database/players/save

# feedback
tellraw @s [{color:"dark_green",text:"[Flair]"},{color:"green",text:" Removed flair! "},{color:"aqua",text:"[🔁]",hover_event:{action:"show_text",value:[{color:"aqua",text:"Click to refresh menu previews"}]},click_event:{action:"run_command",command:"trigger flair"}}]
