# get leading character
scoreboard players add <current_index> variable 1
data modify storage pandamium:local functions."pandamium:impl/text/get_lines_strict/*".this_character set string storage pandamium:local functions."pandamium:impl/text/get_lines_strict/*".string 0 1
data modify storage pandamium:local functions."pandamium:impl/text/get_lines_strict/*".string set string storage pandamium:local functions."pandamium:impl/text/get_lines_strict/*".string 1

scoreboard players set <is_whitespace> variable 1
execute \
    unless data storage pandamium:local functions."pandamium:impl/text/get_lines_strict/*"{this_character:" "} \
    unless data storage pandamium:local functions."pandamium:impl/text/get_lines_strict/*"{this_character:"\u200c"} \
        run scoreboard players set <is_whitespace> variable 0
execute store success score <new_line> variable if data storage pandamium:local functions."pandamium:impl/text/get_lines_strict/*"{this_character:"\n"}

execute if score <new_line> variable matches 0 if score <is_whitespace> variable matches 1 if score <line_start_index> variable = <current_index> variable run scoreboard players add <line_start_index> variable 1
execute if score <new_line> variable matches 0 if score <is_whitespace> variable matches 0 run scoreboard players operation <line_end_index> variable = <current_index> variable
execute if score <new_line> variable matches 0 if score <is_whitespace> variable matches 0 run scoreboard players add <line_end_index> variable 1

# append a new line if a \n character is reached
execute if score <new_line> variable matches 1 run function pandamium:impl/text/get_lines_strict/found_new_line

# loop
execute unless data storage pandamium:local functions."pandamium:impl/text/get_lines_strict/*"{string:""} run function pandamium:impl/text/get_lines_strict/loop
