execute if score <recognised> variable matches 0 run scoreboard players set <found_match> variable 0
execute if score <recognised> variable matches 0 run data modify storage pandamium:json substring set string storage pandamium:json string 0 7
execute if score <recognised> variable matches 0 if data storage pandamium:json {substring:'italic"'} store success score <found_match> variable run data modify storage pandamium:json key set value 'italic'
execute if score <recognised> variable matches 0 if score <found_match> variable matches 1 store success score <recognised> variable run data modify storage pandamium:json string set string storage pandamium:json string 7

execute if score <recognised> variable matches 0 run scoreboard players set <found_match> variable 0
execute if score <recognised> variable matches 0 run data modify storage pandamium:json substring set string storage pandamium:json string 0 14
execute if score <recognised> variable matches 0 if data storage pandamium:json {substring:'strikethrough"'} store success score <found_match> variable run data modify storage pandamium:json key set value 'strikethrough'
execute if score <recognised> variable matches 0 if score <found_match> variable matches 1 store success score <recognised> variable run data modify storage pandamium:json string set string storage pandamium:json string 14
