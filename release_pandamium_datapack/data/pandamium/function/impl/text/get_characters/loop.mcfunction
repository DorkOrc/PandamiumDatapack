# character
data modify storage pandamium:local functions."pandamium:impl/text/get_characters/*".character set string storage pandamium:text substrings[0] 0 1
function pandamium:impl/text/get_characters/check_if_surrogate with storage pandamium:local functions."pandamium:impl/text/get_characters/*"
data modify storage pandamium:text output append from storage pandamium:local functions."pandamium:impl/text/get_characters/*".character

# substring
data modify storage pandamium:text substrings[0] set string storage pandamium:text substrings[0] 1
data modify storage pandamium:temp this_component set from storage pandamium:text substrings[0]
execute if data storage pandamium:temp {this_component:""} run data remove storage pandamium:text substrings[0]

# loop
execute if data storage pandamium:text substrings[0] run function pandamium:impl/text/get_characters/loop
