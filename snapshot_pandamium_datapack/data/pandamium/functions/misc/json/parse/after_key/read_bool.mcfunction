scoreboard players set <bool> variable -1

execute if score <recognised> variable matches 0 run data modify storage pandamium:json substring set string storage pandamium:json string 0 3
execute if score <recognised> variable matches 0 if data storage pandamium:json {char:'t'} if data storage pandamium:json {substring:'rue'} run scoreboard players set <bool> variable 1
execute if score <recognised> variable matches 0 if score <bool> variable matches 1 store success score <recognised> variable run data modify storage pandamium:json string set string storage pandamium:json string 3

execute if score <recognised> variable matches 0 run data modify storage pandamium:json substring set string storage pandamium:json string 0 4
execute if score <recognised> variable matches 0 if data storage pandamium:json {char:'f'} if data storage pandamium:json {substring:'alse'} run scoreboard players set <bool> variable 0
execute if score <recognised> variable matches 0 if score <bool> variable matches 0 store success score <recognised> variable run data modify storage pandamium:json string set string storage pandamium:json string 4

execute if score <bool> variable matches 0..1 if data storage pandamium:json key if data storage pandamium:json stack[-1].flags{is_root:1b} run function pandamium:misc/json/parse/after_key/store_root_bool_attribute

scoreboard players set <next_state> variable 0
