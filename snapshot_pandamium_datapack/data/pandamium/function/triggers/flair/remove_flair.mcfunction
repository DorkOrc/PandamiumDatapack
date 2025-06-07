execute at @s run playsound minecraft:ui.button.click ui @s ~ ~ ~ 0.25

execute unless data storage pandamium.db.players:io selected.entry.data.flair.type run return run function pandamium:triggers/flair/dialog/show_with_warning {args:{message:"Error: Nothing changed"}}

# update cache
function pandamium:utils/database/player_cache/load/self
data remove storage pandamium.db.player_cache:io selected.entry.flair
function pandamium:utils/database/player_cache/save

# save changes
data remove storage pandamium.db.players:io selected.entry.data.flair.type
execute unless data storage pandamium.db.players:io selected.entry.data.flair.color run data remove storage pandamium.db.players:io selected.entry.data.flair
function pandamium:utils/database/players/save

# update dialog
function pandamium:triggers/flair/dialog/show