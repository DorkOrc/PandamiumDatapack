execute unless data storage pandamium.db:players selected.entry.data.flair run return run tellraw @s [{"text":"[Flair]","color":"dark_red"},[{"text":" You must choose a flair ","color":"red"},{"text":"type","bold":true}," before you can choose a flair ",{"text":"colour","bold":true},"!"]]

scoreboard players set <colour> variable -100
scoreboard players operation <colour> variable -= @s flair
function pandamium:impl/font/get_colour

execute if score <valid_option> variable matches 0 run tellraw @s [{"text":"[Flair]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]
execute if score <valid_option> variable matches 0 run return 0

# set colour
execute in pandamium:staff_world run function pandamium:triggers/flair/set_colour/with_colour with storage pandamium:temp colour
function pandamium:utils/database/players/save
function pandamium:player/teams/update_suffix

tellraw @s [{"text":"[Flair]","color":"dark_green"},[{"text":" Set ","color":"green"},{"text":"flair colour","color":"aqua"}," to ",{"storage":"pandamium:temp","nbt":"colour.name","interpret":true},"! ",{"text":"[🔁]","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"Click to refresh menu previews","color":"aqua"}]},"clickEvent":{"action":"run_command","value":"/trigger flair"}}]]
