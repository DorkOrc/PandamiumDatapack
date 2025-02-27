# arguments: type, selected_index, (...)

# get the sorting_value at the selected index 
$execute store result score <selected_entry_sorting_value> variable run data get storage pandamium.leader_boards:data leader_boards.$(type).active.entries[$(selected_index)].sorting_value

# if the min and max indexes are equal, a final index has been settled on
execute if score <min_index> variable = <max_index> variable run return run function pandamium:impl/leader_boards/update_place/binary_search/insert with storage pandamium:local functions."pandamium:impl/leader_boards/update_place/*"

# otherwise, adjust min and max indexes
execute if score <sorting_value> variable <= <selected_entry_sorting_value> variable run scoreboard players operation <max_index> variable = <selected_index> variable
execute if score <sorting_value> variable > <selected_entry_sorting_value> variable run scoreboard players operation <min_index> variable = <selected_index> variable
execute if score <sorting_value> variable > <selected_entry_sorting_value> variable run scoreboard players add <min_index> variable 1

# determine new selected index
scoreboard players operation <selected_index> variable = <max_index> variable
scoreboard players operation <selected_index> variable -= <min_index> variable
scoreboard players operation <selected_index> variable /= #2 constant
execute store result storage pandamium:local functions."pandamium:impl/leader_boards/update_place/*".selected_index int 1 run \
    scoreboard players operation <selected_index> variable += <min_index> variable

# recurse
function pandamium:impl/leader_boards/update_place/binary_search/loop with storage pandamium:local functions."pandamium:impl/leader_boards/update_place/*"
