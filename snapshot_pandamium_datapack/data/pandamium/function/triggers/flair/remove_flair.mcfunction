execute unless data storage pandamium.db.players:io selected.entry.data.flair run return run tellraw @s [{"text":"[Flair]","color":"dark_red"},{"text":" Nothing changed!","color":"red"}]

data remove storage pandamium.db.players:io selected.entry.data.flair
function pandamium:utils/database/players/save

tellraw @s [{"text":"[Flair]","color":"dark_green"},{"text":" Removed flair! ","color":"green"},{"text":"[🔁]","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"Click to refresh menu previews","color":"aqua"}]},"clickEvent":{"action":"run_command","value":"/trigger flair"}}]
