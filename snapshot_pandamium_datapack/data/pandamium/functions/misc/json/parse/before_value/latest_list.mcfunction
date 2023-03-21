execute if data storage pandamium:json {char:'"'} run function pandamium:misc/json/parse/string/to_extra
execute if data storage pandamium:json {char:'"'} store success score <recognised> variable run scoreboard players set <next_state> variable 0

execute if data storage pandamium:json {char:'{'} run data modify storage pandamium:json stack append value {text:[],extra:[]}
execute if data storage pandamium:json {char:'{'} store success score <recognised> variable run scoreboard players set <next_state> variable 1

execute if data storage pandamium:json {char:'['} run data modify storage pandamium:json stack append value {flags:{is_list:1b},text:[],extra:[]}
execute if data storage pandamium:json {char:'['} store success score <recognised> variable run scoreboard players set <next_state> variable 1
