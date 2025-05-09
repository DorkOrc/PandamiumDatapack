# insert if no active entries exist
$execute store result score <active_entries> variable if data storage pandamium.leader_boards:data leader_boards.$(type).active.entries[]
$execute store result score <users_in_active_entries> variable if data storage pandamium.leader_boards:data leader_boards.$(type).active.entries[].users[]
execute if score <active_entries> variable matches 0 run function pandamium:impl/leader_boards/update_place/get_display with storage pandamium:local functions."pandamium:impl/leader_boards/update_place/*"
$execute if score <active_entries> variable matches 0 run return run data modify storage pandamium.leader_boards:data leader_boards.$(type).active.entries append from storage pandamium:local functions."pandamium:impl/leader_boards/update_place/*".entry

# check extremes
$execute store result score <lowest_entry_sorting_value> variable run data get storage pandamium.leader_boards:data leader_boards.$(type).active.entries[0].sorting_value
execute if score <users_in_active_entries> variable matches 25.. if score <sorting_value> variable < <lowest_entry_sorting_value> variable run return fail
execute if score <sorting_value> variable < <lowest_entry_sorting_value> variable run function pandamium:impl/leader_boards/update_place/get_display with storage pandamium:local functions."pandamium:impl/leader_boards/update_place/*"
$execute if score <sorting_value> variable < <lowest_entry_sorting_value> variable run return run data modify storage pandamium.leader_boards:data leader_boards.$(type).active.entries prepend from storage pandamium:local functions."pandamium:impl/leader_boards/update_place/*".entry

$execute store result score <highest_entry_sorting_value> variable run data get storage pandamium.leader_boards:data leader_boards.$(type).active.entries[-1].sorting_value
$scoreboard players operation <leader_boards.leader_board.$(type).highest_value> global > <value> variable
execute if score <sorting_value> variable > <highest_entry_sorting_value> variable run function pandamium:impl/leader_boards/update_place/get_display with storage pandamium:local functions."pandamium:impl/leader_boards/update_place/*"
$execute if score <sorting_value> variable > <highest_entry_sorting_value> variable run return run data modify storage pandamium.leader_boards:data leader_boards.$(type).active.entries append from storage pandamium:local functions."pandamium:impl/leader_boards/update_place/*".entry

# insert
scoreboard players set <min_index> variable 0
scoreboard players operation <max_index> variable = <active_entries> variable
scoreboard players remove <max_index> variable 1

scoreboard players operation <selected_index> variable = <max_index> variable
scoreboard players operation <selected_index> variable -= <min_index> variable
scoreboard players operation <selected_index> variable /= #2 constant
execute store result storage pandamium:local functions."pandamium:impl/leader_boards/update_place/*".selected_index int 1 run \
    scoreboard players operation <selected_index> variable += <min_index> variable

function pandamium:impl/leader_boards/update_place/binary_search/loop with storage pandamium:local functions."pandamium:impl/leader_boards/update_place/*"
