execute unless data storage pandamium.db.players:io selected.entry.data.flair.type run return run tellraw @s [{color:"dark_red",text:"[Flair]"},{color:"red",text:" Nothing changed!"}]

# update cache
function pandamium:utils/database/player_cache/load/self
data remove storage pandamium.db.player_cache:io selected.entry.flair
function pandamium:utils/database/player_cache/save

# save changes
data remove storage pandamium.db.players:io selected.entry.data.flair.type
execute unless data storage pandamium.db.players:io selected.entry.data.flair.color run data remove storage pandamium.db.players:io selected.entry.data.flair
function pandamium:utils/database/players/save

# feedback
function pandamium:triggers/flair/print_menu/reprint
tellraw @s [{color:"dark_green",text:"[Flair]"},{color:"green",text:" Your flair has been removed!"}]
