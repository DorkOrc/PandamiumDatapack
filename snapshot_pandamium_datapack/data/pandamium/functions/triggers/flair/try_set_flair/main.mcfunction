# arguments: index

data modify storage pandamium:temp flair set value 0
$data modify storage pandamium:temp flair set from storage pandamium:dictionary flair.flairs[$(index)]

# fail if outside of range, or value is an empty string
execute if data storage pandamium:temp {flair:0} run tellraw @s [{"text":"[Flair]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]
execute if data storage pandamium:temp {flair:0} run return 0

# set flair
data modify storage pandamium:text input set from storage pandamium.db:players selected.entry.data.flair
function pandamium:utils/text/get_compound
execute if data storage pandamium:text compound.color in pandamium:staff_world run function pandamium:triggers/flair/try_set_flair/with_colour with storage pandamium:text compound

execute store success score <changed> variable run data modify storage pandamium.db:players selected.entry.data.flair set from storage pandamium:temp flair

# end if nothing changed
execute if score <changed> variable matches 0 run tellraw @s [{"text":"[Flair]","color":"dark_red"},{"text":" Nothing changed!","color":"red"}]
execute if score <changed> variable matches 0 run return 0

# save changes
data modify storage pandamium.db:players selected.entry.data.flair set from storage pandamium:temp flair
function pandamium:utils/database/players/save
#function pandamium:player/teams/update_suffix

tellraw @s [{"text":"[Flair]","color":"dark_green"},[{"text":" Set ","color":"green"},{"text":"flair","color":"aqua"}," to ",{"storage":"pandamium:temp","nbt":"flair","interpret":true},"!"]]
