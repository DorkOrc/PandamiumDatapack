# character
data modify storage pandamium:text characters append string storage pandamium:text substrings[0] 0 1

# substring
data modify storage pandamium:text substrings[0] set string storage pandamium:text substrings[0] 1
data modify storage pandamium:temp this_component set from storage pandamium:text substrings[0]
execute if data storage pandamium:temp {this_component:''} run data remove storage pandamium:text substrings[0]

# loop
execute if data storage pandamium:text substrings[0] run function pandamium:impl/text/get_characters/get_characters_from_substrings/loop
