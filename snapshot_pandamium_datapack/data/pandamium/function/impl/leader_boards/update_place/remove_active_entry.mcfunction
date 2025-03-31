# arguments: type, id

# remove active entry
$data remove storage pandamium.leader_boards:data leader_boards.$(type).active.entries[].users[{id:$(id)}]
data modify storage pandamium:local functions."pandamium:impl/leader_boards/update_place/*".entries set value []
$data modify storage pandamium:local functions."pandamium:impl/leader_boards/update_place/*".entries append from storage pandamium.leader_boards:data leader_boards.$(type).active.entries[{users:[{}]}]
$data modify storage pandamium.leader_boards:data leader_boards.$(type).active.entries set from storage pandamium:local functions."pandamium:impl/leader_boards/update_place/*".entries
data remove storage pandamium:local functions."pandamium:impl/leader_boards/update_place/*".entries
