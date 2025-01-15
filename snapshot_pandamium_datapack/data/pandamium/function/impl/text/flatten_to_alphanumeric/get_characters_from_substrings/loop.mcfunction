# arguments: index

# character
data modify storage pandamium:local functions."pandamium:impl/text/flatten_to_alphanumeric/*".this_character set string storage pandamium:text substrings[0] 0 1
function pandamium:impl/text/flatten_to_alphanumeric/get_characters_from_substrings/verify_character with storage pandamium:local functions."pandamium:impl/text/flatten_to_alphanumeric/*"
$data modify storage pandamium:text concat.$(index) set from storage pandamium:local functions."pandamium:impl/text/flatten_to_alphanumeric/*".this_character

# substring
data modify storage pandamium:text substrings[0] set string storage pandamium:text substrings[0] 1
data modify storage pandamium:text this_component set from storage pandamium:text substrings[0]
execute if data storage pandamium:text {this_component:""} run data remove storage pandamium:text substrings[0]

# loop
execute store result storage pandamium:local functions."pandamium:impl/text/flatten_to_alphanumeric/*".index int 1 run scoreboard players add <index> variable 1
execute if data storage pandamium:text substrings[0] run function pandamium:impl/text/flatten_to_alphanumeric/get_characters_from_substrings/loop with storage pandamium:local functions."pandamium:impl/text/flatten_to_alphanumeric/*"
