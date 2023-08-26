# character
data modify storage pandamium:temp this_character set string storage pandamium:text substrings[0] 0 1
execute if data storage pandamium:temp {this_character:'\\'} run data modify storage pandamium:temp this_character set value '\\\\\\\\'
execute if data storage pandamium:temp {this_character:'"'} run data modify storage pandamium:temp this_character set value '\\\\\\"'
$data modify storage pandamium:text concat.$(index) set from storage pandamium:temp this_character

# substring
data modify storage pandamium:text substrings[0] set string storage pandamium:text substrings[0] 1
data modify storage pandamium:temp this_component set from storage pandamium:text substrings[0]
execute if data storage pandamium:temp {this_component:''} run data remove storage pandamium:text substrings[0]

# loop
execute store result storage pandamium:templates macro.index.index int 1 run scoreboard players add <index> variable 1
execute if data storage pandamium:text substrings[0] run function pandamium:impl/text/remove_formatting/get_characters_from_substrings/loop with storage pandamium:templates macro.index
