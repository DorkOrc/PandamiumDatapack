execute unless data storage pandamium.db:players selected.entry.data.flair run tellraw @s [{"text":"[Flair]","color":"dark_red"},{"text":" You must choose a flair before you can choose a flair colour!","color":"red"}]
execute unless data storage pandamium.db:players selected.entry.data.flair run return 0

scoreboard players set <colour> variable -100
scoreboard players operation <colour> variable -= @s flair
function pandamium:impl/font/get_colour

execute if score <valid_option> variable matches 0 run tellraw @s [{"text":"[Flair]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]
execute if score <valid_option> variable matches 0 run return 0

# set colour
execute in pandamium:staff_world run function pandamium:triggers/flair/set_colour/with_colour with storage pandamium:temp colour
function pandamium:utils/database/players/save
function pandamium:player/teams/update_suffix

tellraw @s [{"text":"[Flair]","color":"dark_green"},{"text":" Set flair colour to ","color":"green"},{"storage":"pandamium:temp","nbt":"colour.name","interpret":true},"!"]
