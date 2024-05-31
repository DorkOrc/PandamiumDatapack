execute unless data storage pandamium.db.players:io selected.entry.data.flair run return run tellraw @s [{"text":"[Flair]","color":"dark_red"},[{"text":" You must choose a flair ","color":"red"},{"text":"type","bold":true}," before you can choose a flair ",{"text":"colour","bold":true},"!"]]

scoreboard players set <colour> variable -100
scoreboard players operation <colour> variable -= @s flair
function pandamium:impl/font/get_colour
execute if score <valid_option> variable matches 0 run return run tellraw @s [{"text":"[Flair]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]

execute if data storage pandamium.db.players:io selected.entry.data.flair{custom:1b} run return run tellraw @s [{"text":"[Flair]","color":"dark_red"},{"text":" You may not modify the colour of this flair!","color":"red"}]

# set colour
data modify storage pandamium.db.players:io selected.entry.data.flair.color set from storage pandamium:temp colour.literal
function pandamium:triggers/flair/update_flair_json with storage pandamium.db.players:io selected.entry.data
function pandamium:utils/database/players/save

tellraw @s [{"text":"[Flair]","color":"dark_green"},[{"text":" Set ","color":"green"},{"text":"flair colour","color":"aqua"}," to ",{"storage":"pandamium:temp","nbt":"colour.name","interpret":true},"! ",{"text":"[🔁]","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"Click to refresh menu previews","color":"aqua"}]},"clickEvent":{"action":"run_command","value":"/trigger flair"}}]]
