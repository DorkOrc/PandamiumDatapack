# arguments: type, selected_index, (...)

# if the selected entry's sorting_value is equal to the inserting entry's sorting_value then modify selected entry
$execute if score <selected_entry_sorting_value> variable = <sorting_value> variable run return run data modify storage pandamium.leader_boards:data leader_boards.$(type).active.entries[$(selected_index)].users append from storage pandamium:local functions."pandamium:impl/leader_boards/update_place/*".entry.users[0]

# otherwise, insert a new entry and remove lowest entry to ensure there are only ever at most 25 entries
function pandamium:impl/leader_boards/update_place/get_display with storage pandamium:local functions."pandamium:impl/leader_boards/update_place/*"
$data modify storage pandamium.leader_boards:data leader_boards.$(type).active.entries insert $(selected_index) from storage pandamium:local functions."pandamium:impl/leader_boards/update_place/*".entry
$execute if data storage pandamium.leader_boards:data leader_boards.$(type).active.entries[25] run data remove storage pandamium.leader_boards:data leader_boards.$(type).active.entries[0]
