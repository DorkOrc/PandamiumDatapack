data remove storage pandamium:json key

data modify storage pandamium:json substring set string storage pandamium:json string 0 5
execute if data storage pandamium:json {substring:'text"'} run data modify storage pandamium:json string set string storage pandamium:json string 5
execute if data storage pandamium:json {substring:'text"'} store success score <recognised> variable run data modify storage pandamium:json key set value 'text'

execute if score <recognised> variable matches 0 run data modify storage pandamium:json substring set string storage pandamium:json string 0 6
execute if score <recognised> variable matches 0 if data storage pandamium:json {substring:'extra"'} run data modify storage pandamium:json string set string storage pandamium:json string 6
execute if score <recognised> variable matches 0 if data storage pandamium:json {substring:'extra"'} store success score <recognised> variable run data modify storage pandamium:json key set value 'extra'

execute if score <recognised> variable matches 0 run function pandamium:misc/json/parse/string/ignore

scoreboard players set <next_state> variable 2
scoreboard players set <recognised> variable 1
