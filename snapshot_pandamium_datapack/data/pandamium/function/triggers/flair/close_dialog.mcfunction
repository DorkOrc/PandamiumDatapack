execute at @s run playsound minecraft:ui.button.click ui @s ~ ~ ~ 0.25

execute if predicate pandamium:can_have_flair run return run dialog clear @s

## If the user can't have a flair, remove it when they close the dialog
execute unless data storage pandamium.db.players:io selected.entry.data.flair.type run return run dialog clear @s

# update cache
function pandamium:utils/database/player_cache/load/self
data remove storage pandamium.db.player_cache:io selected.entry.flair
function pandamium:utils/database/player_cache/save

# save changes
data remove storage pandamium.db.players:io selected.entry.data.flair
function pandamium:utils/database/players/save

# close dialog
dialog clear @s