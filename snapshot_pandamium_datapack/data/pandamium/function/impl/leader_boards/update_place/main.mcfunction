# arguments: type
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

# attempt insert
function pandamium:impl/leader_boards/update_place/insert_logic with storage pandamium:local functions."pandamium:impl/leader_boards/update_place/*"

# trim extra user entry if there are more than 25
$execute store result score <users_in_active_entries> variable if data storage pandamium.leader_boards:data leader_boards.$(type).active.entries[]
$execute if score <users_in_active_entries> variable matches 26.. run data remove storage pandamium.leader_boards:data leader_boards.$(type).active.entries[0].users[-1]
$execute if score <users_in_active_entries> variable matches 26.. unless data storage pandamium.leader_boards:data leader_boards.$(type).active.entries[0].users[0] run data remove storage pandamium.leader_boards:data leader_boards.$(type).active.entries[0]
