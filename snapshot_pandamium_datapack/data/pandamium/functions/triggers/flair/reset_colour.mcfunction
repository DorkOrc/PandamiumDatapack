execute unless data storage pandamium.db:players selected.entry.data.flair run return run tellraw @s [{"text":"[Flair]","color":"dark_red"},[{"text":" You must choose a flair ","color":"red"},{"text":"type","bold":true}," before you can choose a flair ",{"text":"colour","bold":true},"!"]]

data modify storage pandamium:text input set from storage pandamium.db:players selected.entry.data.flair
function pandamium:utils/text/remove_formatting_from_json/inclusive
data modify storage pandamium.db:players selected.entry.data.flair set string storage pandamium:text output 8 -1

function pandamium:utils/database/players/save

tellraw @s [{"text":"[Flair]","color":"dark_green"},{"text":" Reset flair colour! ","color":"green"},{"text":"[🔁]","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"Click to refresh menu previews","color":"aqua"}]},"clickEvent":{"action":"run_command","value":"/trigger flair"}}]
