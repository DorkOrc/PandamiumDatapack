# arguments: type, (id)
# inputs:
# - storage pandamium.leader_boards:io args.type
# - storage pandamium.leader_boards:io args.id

$execute unless data storage pandamium.leader_boards:data leader_boards.$(type){} run return fail

function pandamium:utils/database/players/load/from_id with storage pandamium.leader_boards:io args
execute unless data storage pandamium.db.players:io selected run return fail

data modify storage pandamium:local functions."pandamium:impl/leader_boards/update_place/*" set from storage pandamium.leader_boards:io args
$data modify storage pandamium:local functions."pandamium:impl/leader_boards/update_place/*" merge from storage pandamium.leader_boards:data leader_boards.$(type).value_getter

function pandamium:impl/leader_boards/update_place/remove_active_entry with storage pandamium:local functions."pandamium:impl/leader_boards/update_place/*"

# get value and sorting_value
scoreboard players reset <value> variable
scoreboard players reset <sorting_value> variable
function pandamium:impl/leader_boards/update_place/with_value_getter with storage pandamium:local functions."pandamium:impl/leader_boards/update_place/*"
execute unless score <value> variable = <value> variable run return fail
execute unless score <sorting_value> variable = <sorting_value> variable run return fail

# get entry data
data modify storage pandamium:local functions."pandamium:impl/leader_boards/update_place/*".entry set value {users:[{}]}
execute store result storage pandamium:local functions."pandamium:impl/leader_boards/update_place/*".entry.value int 1 run scoreboard players get <value> variable
execute store result storage pandamium:local functions."pandamium:impl/leader_boards/update_place/*".entry.sorting_value int 1 run scoreboard players get <sorting_value> variable
data modify storage pandamium:local functions."pandamium:impl/leader_boards/update_place/*".entry.display set from storage pandamium:local functions."pandamium:impl/leader_boards/update_place/*".display
data modify storage pandamium:local functions."pandamium:impl/leader_boards/update_place/*".entry.users[-1].id set from storage pandamium.db.players:io selected.entry.id
data modify storage pandamium:local functions."pandamium:impl/leader_boards/update_place/*".entry.users[-1].username set from storage pandamium.db.players:io selected.entry.username

# insert if no active entries exist
$execute store result score <active_entries> variable if data storage pandamium.leader_boards:data leader_boards.$(type).active.entries[]
$execute if score <active_entries> variable matches 0 run return run data modify storage pandamium.leader_boards:data leader_boards.$(type).active.entries append from storage pandamium:local functions."pandamium:impl/leader_boards/update_place/*".entry

# check extremes
$execute store result score <lowest_entry_sorting_value> variable run data get storage pandamium.leader_boards:data leader_boards.$(type).active.entries[0].sorting_value
execute if score <active_entries> variable matches 25.. if score <sorting_value> variable < <lowest_entry_sorting_value> variable run return fail
$execute if score <sorting_value> variable < <lowest_entry_sorting_value> variable run return run data modify storage pandamium.leader_boards:data leader_boards.$(type).active.entries prepend from storage pandamium:local functions."pandamium:impl/leader_boards/update_place/*".entry

$execute store result score <highest_entry_sorting_value> variable run data get storage pandamium.leader_boards:data leader_boards.$(type).active.entries[-1].sorting_value
$scoreboard players operation <leader_boards.leader_board.$(type)._highest_value> global > <value> variable
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
