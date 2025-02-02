# input:
# - storage pandamium:text input
# - storage pandamium:text args
# output:
# - storage pandamium:text output

function pandamium:utils/text/flatten

# fail if there is no key
execute unless data storage pandamium:text args[0] run return run data modify storage pandamium:text output set value []

# return empty string if there are no substrings
execute if data storage pandamium:text {output:""} run return run data modify storage pandamium:text output set value [""]

data remove storage pandamium:local functions."pandamium:impl/text/split/*".key
data modify storage pandamium:local functions."pandamium:impl/text/split/*".key set string storage pandamium:text args[0]
execute store success score <not_string> variable run data modify storage pandamium:local functions."pandamium:impl/text/split/*".key set from storage pandamium:text args[0]
execute if score <not_string> variable matches 1 run return fail

# iterate through characters from the input and append line whenever a key is reached
data modify storage pandamium:local functions."pandamium:impl/text/split/*".original_string set from storage pandamium:text output
data modify storage pandamium:local functions."pandamium:impl/text/split/*".string set from storage pandamium:text output
execute store result score <key_length> variable store result storage pandamium:local functions."pandamium:impl/text/split/*".key_length int 1 run data get storage pandamium:local functions."pandamium:impl/text/split/*".key
data modify storage pandamium:text output set value []

execute store result storage pandamium:local functions."pandamium:impl/text/split/*".line_start_index int 1 run scoreboard players set <line_start_index> variable 0
scoreboard players set <current_index> variable -1
function pandamium:impl/text/split/loop with storage pandamium:local functions."pandamium:impl/text/split/*"

execute store result storage pandamium:local functions."pandamium:impl/text/split/*".current_index int 1 run scoreboard players add <current_index> variable 1
function pandamium:impl/text/split/new_line with storage pandamium:local functions."pandamium:impl/text/split/*"
