data remove storage pandamium:json value

execute if score <recognised> variable matches 0 run scoreboard players set <found_match> variable 0
execute if score <recognised> variable matches 0 run data modify storage pandamium:json substring set string storage pandamium:json string 0 14
execute if score <recognised> variable matches 0 if data storage pandamium:json {substring:'minecraft:alt"'} store success score <found_match> variable run data modify storage pandamium:json value set value 'minecraft:alt'
execute if score <recognised> variable matches 0 if score <found_match> variable matches 1 store success score <recognised> variable run data modify storage pandamium:json string set string storage pandamium:json string 14

execute if score <recognised> variable matches 0 run data modify storage pandamium:json substring set string storage pandamium:json string 0 18
execute if score <recognised> variable matches 0 run scoreboard players set <found_match> variable 1
execute if score <recognised> variable matches 0 unless data storage pandamium:json {substring:'minecraft:default"'} unless data storage pandamium:json {substring:'minecraft:uniform"'} run scoreboard players set <found_match> variable 0
execute if score <recognised> variable matches 0 if score <found_match> variable matches 1 run data modify storage pandamium:json string set string storage pandamium:json string 18
execute if score <recognised> variable matches 0 if score <found_match> variable matches 1 store success score <recognised> variable run data modify storage pandamium:json value set string storage pandamium:json substring 0 17

execute if score <recognised> variable matches 0 run scoreboard players set <found_match> variable 0
execute if score <recognised> variable matches 0 run data modify storage pandamium:json substring set string storage pandamium:json string 0 21
execute if score <recognised> variable matches 0 if data storage pandamium:json {substring:'minecraft:illageralt"'} store success score <found_match> variable run data modify storage pandamium:json value set value 'minecraft:illageralt'
execute if score <recognised> variable matches 0 if score <found_match> variable matches 1 store success score <recognised> variable run data modify storage pandamium:json string set string storage pandamium:json string 21

execute if score <recognised> variable matches 1 if data storage pandamium:json {key:'font'} run data modify storage pandamium:json root_attributes.font set from storage pandamium:json value
