execute unless data storage pandamium.db:players selected.entry.data.flair run tellraw @s [{"text":"[Flair]","color":"dark_red"},{"text":" You must choose a flair before you can choose a flair colour!","color":"red"}]
execute unless data storage pandamium.db:players selected.entry.data.flair run return 0

data modify storage pandamium:text input set from storage pandamium.db:players selected.entry.data.flair
function pandamium:utils/text/remove_formatting_from_json
data modify storage pandamium.db:players selected.entry.data.flair set from storage pandamium:text output

function pandamium:utils/database/players/save
function pandamium:player/teams/update_suffix

tellraw @s [{"text":"[Flair]","color":"dark_green"},{"text":" Removed flair colour!","color":"green"}]
