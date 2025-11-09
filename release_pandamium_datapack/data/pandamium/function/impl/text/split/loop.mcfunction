# arguments: key_length

# get leading character
scoreboard players add <current_index> variable 1
$data modify storage pandamium:local functions."pandamium:impl/text/split/*".this_slice set string storage pandamium:local functions."pandamium:impl/text/split/*".string 0 $(key_length)

execute store success score <different> variable run data modify storage pandamium:local functions."pandamium:impl/text/split/*".this_slice set from storage pandamium:local functions."pandamium:impl/text/split/*".key

execute if score <different> variable matches 1 run data modify storage pandamium:local functions."pandamium:impl/text/split/*".string set string storage pandamium:local functions."pandamium:impl/text/split/*".string 1
$execute if score <different> variable matches 0 run data modify storage pandamium:local functions."pandamium:impl/text/split/*".string set string storage pandamium:local functions."pandamium:impl/text/split/*".string $(key_length)

# append a new line if a key is reached
execute if score <different> variable matches 0 store result storage pandamium:local functions."pandamium:impl/text/split/*".current_index int 1 run scoreboard players get <current_index> variable
execute if score <different> variable matches 0 run function pandamium:impl/text/split/new_line with storage pandamium:local functions."pandamium:impl/text/split/*"

# loop
execute unless data storage pandamium:local functions."pandamium:impl/text/split/*"{string:""} run function pandamium:impl/text/split/loop with storage pandamium:local functions."pandamium:impl/text/split/*"
