# arguments: index

data modify storage pandamium:local functions."pandamium:impl/text/flatten/*".this_character set string storage pandamium:text substrings[0] 0 1
execute if data storage pandamium:local functions."pandamium:impl/text/flatten/*"{this_character:"\\"} run data modify storage pandamium:local functions."pandamium:impl/text/flatten/*".this_character set value "\\\\"
execute if data storage pandamium:local functions."pandamium:impl/text/flatten/*"{this_character:'"'} run data modify storage pandamium:local functions."pandamium:impl/text/flatten/*".this_character set value '\\"'

$data modify storage pandamium:templates concat."$(index)" set from storage pandamium:local functions."pandamium:impl/text/flatten/*".this_character

# loop
data modify storage pandamium:text substrings[0] set string storage pandamium:text substrings[0] 1
data modify storage pandamium:temp this_substring set from storage pandamium:text substrings[0]
execute if data storage pandamium:temp {this_substring:""} run data remove storage pandamium:text substrings[0]

execute store result storage pandamium:local functions."pandamium:impl/text/flatten/*".index int 1 run scoreboard players add <index> variable 1
execute if data storage pandamium:text substrings[0] run function pandamium:impl/text/flatten/loop with storage pandamium:local functions."pandamium:impl/text/flatten/*"
