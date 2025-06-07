execute at @s run playsound minecraft:ui.button.click ui @s ~ ~ ~ 0.25

execute unless data storage pandamium.db.players:io selected.entry.data.flair run return run function pandamium:triggers/flair/dialog/show_with_warning {args:{message:"Error: You must choose a flair type before you can choose a colour"}}
execute unless data storage pandamium.db.players:io selected.entry.data.flair.color run return run function pandamium:triggers/flair/dialog/show_with_warning {args:{message:"Error: Nothing changed"}}

# update user data
data remove storage pandamium.db.players:io selected.entry.data.flair.color

# update cache
function pandamium:utils/database/player_cache/load/self
data modify storage pandamium.db.player_cache:io selected.entry.flair set from storage pandamium:local functions."pandamium:triggers/flair/*".current_type.value
function pandamium:utils/database/player_cache/save

# save changes
function pandamium:utils/database/players/save

# update dialog
function pandamium:triggers/flair/dialog/show