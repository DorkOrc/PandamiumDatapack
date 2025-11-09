# get leading character
scoreboard players add <current_index> variable 1
data modify storage pandamium:local functions."pandamium:impl/text/replace/*".this_character set string storage pandamium:local functions."pandamium:impl/text/replace/*".string 0 1
data modify storage pandamium:local functions."pandamium:impl/text/replace/*".string set string storage pandamium:local functions."pandamium:impl/text/replace/*".string 1

execute store success score <not_key_head> variable run data modify storage pandamium:local functions."pandamium:impl/text/replace/*".this_character set from storage pandamium:local functions."pandamium:impl/text/replace/*".key_head
execute store success score <found_key_head> variable if score <not_key_head> variable matches 0

scoreboard players set <found_key> variable 0
execute if score <found_key_head> variable matches 1 if score <key_length> variable matches 1 run scoreboard players set <found_key> variable 1
execute if score <found_key_head> variable matches 1 if score <key_length> variable matches 2.. store result storage pandamium:local functions."pandamium:impl/text/replace/*".current_index int 1 run scoreboard players get <current_index> variable
execute if score <found_key_head> variable matches 1 if score <key_length> variable matches 2.. run function pandamium:impl/text/replace/check_key with storage pandamium:local functions."pandamium:impl/text/replace/*"

# append a new line if a key character is reached
execute if score <found_key> variable matches 1 if score <key_length> variable matches 1 store result storage pandamium:local functions."pandamium:impl/text/replace/*".current_index int 1 run scoreboard players get <current_index> variable
execute if score <found_key> variable matches 1 run function pandamium:impl/text/replace/new_line with storage pandamium:local functions."pandamium:impl/text/replace/*"

# loop
execute unless data storage pandamium:local functions."pandamium:impl/text/replace/*"{string:""} run function pandamium:impl/text/replace/loop
