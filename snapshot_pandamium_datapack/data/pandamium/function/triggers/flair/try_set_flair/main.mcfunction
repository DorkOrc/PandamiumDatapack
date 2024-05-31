# arguments: index

data modify storage pandamium:temp flair set value {none:1b}
$data modify storage pandamium:temp flair set from storage pandamium:dictionary flair.flairs[$(index)]

# fail if outside of range, or value is an empty string
execute if data storage pandamium:temp flair{none:1b} run return run tellraw @s [{"text":"[Flair]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]

# set flair
data modify storage pandamium:temp flair.json set from storage pandamium.db.players:io selected.entry.data.flair.json
execute unless data storage pandamium:temp flair{custom:1b} unless data storage pandamium.db.players:io selected.entry.data.flair{custom:1b} run data modify storage pandamium:temp flair.color set from storage pandamium.db.players:io selected.entry.data.flair.color
data modify storage pandamium.db.players:io selected.entry.data.flair set from storage pandamium:temp flair
function pandamium:triggers/flair/update_flair_json with storage pandamium.db.players:io selected.entry.data

# end if nothing changed
execute if score <changed> variable matches 0 run return run tellraw @s [{"text":"[Flair]","color":"dark_red"},{"text":" Nothing changed!","color":"red"}]

# save changes
function pandamium:utils/database/players/save

tellraw @s [{"text":"[Flair]","color":"dark_green"},[{"text":" Set ","color":"green"},{"text":"flair type","color":"aqua"}," to ",{"color":"aqua","text":"","extra":[{"storage":"pandamium:temp","nbt":"flair","interpret":true}]},"!"]]
