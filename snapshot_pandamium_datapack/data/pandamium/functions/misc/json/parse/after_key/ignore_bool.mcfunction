data modify storage pandamium:json substring set string storage pandamium:json string 0 4
execute if data storage pandamium:json {substring:'true'} store success score <recognised> variable run data modify storage pandamium:json string set string storage pandamium:json string 4

execute if score <recognised> variable matches 0 run data modify storage pandamium:json substring set string storage pandamium:json string 0 5
execute if score <recognised> variable matches 0 if data storage pandamium:json {substring:'false'} store success score <recognised> variable run data modify storage pandamium:json string set string storage pandamium:json string 5

scoreboard players set <next_state> variable 0
scoreboard players set <recognised> variable 1
