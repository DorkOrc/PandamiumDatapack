# arguments: index

data modify storage pandamium:temp flair set from storage pandamium.db:players selected.entry.data.flair
scoreboard players set <changed> variable 0
$execute store success score <changed> variable run data modify storage pandamium:temp flair set from storage pandamium:dictionary flair.flairs[$(index)]

# end early if nothing is different
execute if score <changed> variable matches 0 run tellraw @s [{"text":"[Flair]","color":"dark_red"},{"text":" Nothing changed!","color":"red"}]
execute if score <changed> variable matches 0 run return 0

# fail if outside of range, or value is an empty string
execute if data storage pandamium:temp {flair:""} run scoreboard players set <changed> variable -1
$execute unless data storage pandamium:dictionary flair.flairs[$(index)] run scoreboard players set <changed> variable -1
execute if score <changed> variable matches -1 run tellraw @s [{"text":"[Flair]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]
execute if score <changed> variable matches -1 run return 0

# save changes
data modify storage pandamium.db:players selected.entry.data.flair set from storage pandamium:temp flair
function pandamium:utils/database/players/save
function pandamium:player/teams/update_suffix

tellraw @s [{"text":"[Flair]","color":"dark_green"},[{"text":" Set flair to ","color":"green"},{"storage":"pandamium:temp","nbt":"flair","interpret":true},"!"]]
