# arguments: index

data modify storage pandamium:local functions."pandamium:impl/text/get_lines/*".this_character set string storage pandamium:text substrings[0] 0 1
execute if data storage pandamium:local functions."pandamium:impl/text/get_lines/*"{this_character:"\\"} run data modify storage pandamium:local functions."pandamium:impl/text/get_lines/*".this_character set value "\\\\"
execute if data storage pandamium:local functions."pandamium:impl/text/get_lines/*"{this_character:'"'} run data modify storage pandamium:local functions."pandamium:impl/text/get_lines/*".this_character set value '\\"'

data modify storage pandamium:local functions."pandamium:impl/text/get_lines/*".newline set from storage pandamium:dictionary special_characters.newline
execute store success score <not_newline> variable run data modify storage pandamium:local functions."pandamium:impl/text/get_lines/*".newline set from storage pandamium:local functions."pandamium:impl/text/get_lines/*".this_character

$execute if score <not_newline> variable matches 1 run data modify storage pandamium:templates concat."$(index)" set from storage pandamium:local functions."pandamium:impl/text/get_lines/*".this_character
execute if score <not_newline> variable matches 0 run function pandamium:impl/text/get_lines/new_line with storage pandamium:templates concat

# loop
data modify storage pandamium:text substrings[0] set string storage pandamium:text substrings[0] 1
data modify storage pandamium:temp this_substring set from storage pandamium:text substrings[0]
execute if data storage pandamium:temp {this_substring:""} run data remove storage pandamium:text substrings[0]

execute store result storage pandamium:local functions."pandamium:impl/text/get_lines/*".index int 1 run scoreboard players add <index> variable 1
execute if data storage pandamium:text substrings[0] run function pandamium:impl/text/get_lines/loop with storage pandamium:local functions."pandamium:impl/text/get_lines/*"
