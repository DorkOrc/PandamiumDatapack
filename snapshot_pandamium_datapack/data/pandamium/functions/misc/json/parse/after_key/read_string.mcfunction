execute if data storage pandamium:json {key:'text'} store success score <recognised> variable run function pandamium:misc/json/parse/string/to_text
execute if score <recognised> variable matches 0 if data storage pandamium:json {key:'extra'} store success score <recognised> variable run function pandamium:misc/json/parse/string/to_extra
execute if score <recognised> variable matches 0 if data storage pandamium:json {key:'contents'} if data storage pandamium:json stack[-1].flags{hover_event:1b} store success score <recognised> variable run function pandamium:misc/json/parse/string/to_extra
execute if score <recognised> variable matches 0 store success score <recognised> variable run function pandamium:misc/json/parse/string/ignore

scoreboard players set <next_state> variable 0
scoreboard players set <recognised> variable 1
