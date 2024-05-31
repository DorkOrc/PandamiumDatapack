execute unless data storage pandamium.db.players:io selected.entry.data.flair run return run tellraw @s [{"text":"[Flair]","color":"dark_red"},[{"text":" You must choose a flair ","color":"red"},{"text":"type","bold":true}," before you can choose a flair ",{"text":"colour","bold":true},"!"]]

data remove storage pandamium.db.players:io selected.entry.data.flair.color
function pandamium:triggers/flair/update_flair_json with storage pandamium.db.players:io selected.entry.data

function pandamium:utils/database/players/save

tellraw @s [{"text":"[Flair]","color":"dark_green"},{"text":" Reset flair colour! ","color":"green"},{"text":"[🔁]","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"Click to refresh menu previews","color":"aqua"}]},"clickEvent":{"action":"run_command","value":"/trigger flair"}}]
