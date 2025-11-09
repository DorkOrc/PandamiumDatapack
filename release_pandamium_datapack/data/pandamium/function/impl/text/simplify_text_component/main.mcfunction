# input:
# - storage pandamium:text input
# output:
# - storage pandamium:text output

data remove storage pandamium:text output

function pandamium:utils/text/input/resolve
execute unless data storage pandamium:text input{} run return run data modify storage pandamium:text output set from storage pandamium:text input

# get compound size
execute store result score <compound_size> variable run data get storage pandamium:text input

execute if score <compound_size> variable matches 3.. run return run data modify storage pandamium:text output set from storage pandamium:text input
execute if score <compound_size> variable matches 1 if data storage pandamium:text input.text run return run data modify storage pandamium:text output set from storage pandamium:text input.text
execute if score <compound_size> variable matches 1 run return run data modify storage pandamium:text output set from storage pandamium:text input
execute if score <compound_size> variable matches 0 run return run data modify storage pandamium:text output set value ""

# check if "text" and "extra" are the only two keys
execute if score <compound_size> variable matches 2 unless data storage pandamium:text input.text run return run data modify storage pandamium:text output set from storage pandamium:text input
execute if score <compound_size> variable matches 2 unless data storage pandamium:text input.extra run return run data modify storage pandamium:text output set from storage pandamium:text input

# if extra is only a list of strings, flatten
execute if data storage pandamium:text input.extra[{}] run return run data modify storage pandamium:text output set from storage pandamium:text input
function pandamium:utils/text/flatten
