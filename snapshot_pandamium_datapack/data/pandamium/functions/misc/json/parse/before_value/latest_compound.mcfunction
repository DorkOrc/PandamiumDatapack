data remove storage pandamium:json key

execute if score <recognised> variable matches 0 run data modify storage pandamium:json substring set string storage pandamium:json string 0 5
execute if score <recognised> variable matches 0 run scoreboard players set <found_match> variable 1
execute if score <recognised> variable matches 0 unless data storage pandamium:json {substring:'text"'} unless data storage pandamium:json {substring:'bold"'} unless data storage pandamium:json {substring:'font"'} run scoreboard players set <found_match> variable 0
execute if score <recognised> variable matches 0 if score <found_match> variable matches 1 run data modify storage pandamium:json string set string storage pandamium:json string 5
execute if score <recognised> variable matches 0 if score <found_match> variable matches 1 store success score <recognised> variable run data modify storage pandamium:json key set string storage pandamium:json substring 0 4

execute if score <recognised> variable matches 0 run data modify storage pandamium:json substring set string storage pandamium:json string 0 6
execute if score <recognised> variable matches 0 run scoreboard players set <found_match> variable 1
execute if score <recognised> variable matches 0 unless data storage pandamium:json {substring:'extra"'} unless data storage pandamium:json {substring:'color"'} run scoreboard players set <found_match> variable 0
execute if score <recognised> variable matches 0 if score <found_match> variable matches 1 run data modify storage pandamium:json string set string storage pandamium:json string 6
execute if score <recognised> variable matches 0 if score <found_match> variable matches 1 store success score <recognised> variable run data modify storage pandamium:json key set string storage pandamium:json substring 0 5

execute if score <recognised> variable matches 0 run function pandamium:misc/json/parse/before_value/latest_compound_uncommon
execute if score <recognised> variable matches 0 run function pandamium:misc/json/parse/string/ignore

#tellraw DorkOrc [{"nbt":"key","storage":"pandamium:json"}," - ",{"nbt":"stack[-1].flags.is_root","storage":"pandamium:json"}]

execute if score <found_original_text> variable matches 1 if data storage pandamium:json {key:'extra'} if data storage pandamium:json stack[-1].flags{is_root:1b} run data modify storage pandamium:json string set value ''
execute if score <found_original_text> variable matches 1 if data storage pandamium:json {key:'extra'} if data storage pandamium:json stack[-1].flags{is_root:1b} run data remove storage pandamium:json stack[]

scoreboard players set <next_state> variable 2
scoreboard players set <recognised> variable 1
