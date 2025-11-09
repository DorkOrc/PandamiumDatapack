# get leading character
scoreboard players add <current_index> variable 1
data modify storage pandamium:local functions."pandamium:impl/text/get_lines/*".this_character set string storage pandamium:local functions."pandamium:impl/text/get_lines/*".string 0 1
data modify storage pandamium:local functions."pandamium:impl/text/get_lines/*".string set string storage pandamium:local functions."pandamium:impl/text/get_lines/*".string 1

# append a new line if a \n character is reached
execute if data storage pandamium:local functions."pandamium:impl/text/get_lines/*"{this_character:"\n"} store result storage pandamium:local functions."pandamium:impl/text/get_lines/*".current_index int 1 run scoreboard players get <current_index> variable
execute if data storage pandamium:local functions."pandamium:impl/text/get_lines/*"{this_character:"\n"} run function pandamium:impl/text/get_lines/new_line with storage pandamium:local functions."pandamium:impl/text/get_lines/*"

# loop
execute unless data storage pandamium:local functions."pandamium:impl/text/get_lines/*"{string:""} run function pandamium:impl/text/get_lines/loop
