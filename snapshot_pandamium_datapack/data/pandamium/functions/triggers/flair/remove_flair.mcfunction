execute unless data storage pandamium.db:players selected.entry.data.flair run tellraw @s [{"text":"[Flair]","color":"dark_red"},{"text":" Nothing changed!","color":"red"}]
execute unless data storage pandamium.db:players selected.entry.data.flair run return 0

data remove storage pandamium.db:players selected.entry.data.flair
function pandamium:utils/database/players/save
function pandamium:player/teams/update_suffix

tellraw @s [{"text":"[Flair]","color":"dark_green"},{"text":" Removed flair!","color":"green"}]
