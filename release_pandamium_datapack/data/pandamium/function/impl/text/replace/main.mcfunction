# input:
# - storage pandamium:text input
# - storage pandamium:text args
# output:
# - storage pandamium:text output

# validate both arguments
execute unless data storage pandamium:text args[1] run return fail

data remove storage pandamium:local functions."pandamium:impl/text/replace/*".key
data modify storage pandamium:local functions."pandamium:impl/text/replace/*".key set string storage pandamium:text args[0]
execute store success score <non_string> variable run data modify storage pandamium:local functions."pandamium:impl/text/replace/*".key set from storage pandamium:text args[0]
execute if score <non_string> variable matches 1 run return fail

data remove storage pandamium:local functions."pandamium:impl/text/replace/*".replacement
data modify storage pandamium:local functions."pandamium:impl/text/replace/*".replacement set string storage pandamium:text args[1]
execute store success score <non_string> variable run data modify storage pandamium:local functions."pandamium:impl/text/replace/*".replacement set from storage pandamium:text args[1]
execute if score <non_string> variable matches 1 run return fail

data modify storage pandamium:local functions."pandamium:impl/text/replace/*".key_head set string storage pandamium:text args[0] 0 1
data modify storage pandamium:local functions."pandamium:impl/text/replace/*".key_body set string storage pandamium:text args[0] 1
execute store result score <key_body_length> variable store result score <key_length> variable store result storage pandamium:local functions."pandamium:impl/text/replace/*".key_length int 1 run data get storage pandamium:text args[0]
execute store result storage pandamium:local functions."pandamium:impl/text/replace/*".key_body_length int 1 run scoreboard players remove <key_body_length> variable 1

# return empty string if there are no substrings
function pandamium:utils/text/flatten
execute if data storage pandamium:text {output:""} run return 1

# iterate through characters from the input and append line whenever a key is reached
data modify storage pandamium:local functions."pandamium:impl/text/replace/*".original_string set from storage pandamium:text output
data modify storage pandamium:local functions."pandamium:impl/text/replace/*".string set from storage pandamium:text output
data modify storage pandamium:text input set value []

execute store result storage pandamium:local functions."pandamium:impl/text/replace/*".line_start_index int 1 run scoreboard players set <line_start_index> variable 0
scoreboard players set <current_index> variable -1
function pandamium:impl/text/replace/loop

execute store result storage pandamium:local functions."pandamium:impl/text/replace/*".current_index int 1 run scoreboard players add <current_index> variable 1
function pandamium:impl/text/replace/new_line with storage pandamium:local functions."pandamium:impl/text/replace/*"

data remove storage pandamium:text args[0]
function pandamium:impl/text/concatenate_strings/main

return 1
