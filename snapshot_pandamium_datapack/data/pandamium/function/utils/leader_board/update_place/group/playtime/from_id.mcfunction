# arguments: id

data modify storage pandamium.leader_boards:io args set value {}
$execute store result storage pandamium.leader_boards:io args.id int 1 run scoreboard players set <id> variable $(id)

data modify storage pandamium.leader_boards:io args.type set value "monthly_playtime"
function pandamium:impl/leader_boards/update_place/main with storage pandamium.leader_boards:io args

data modify storage pandamium.leader_boards:io args.type set value "yearly_playtime"
function pandamium:impl/leader_boards/update_place/main with storage pandamium.leader_boards:io args

data modify storage pandamium.leader_boards:io args.type set value "total_playtime"
function pandamium:impl/leader_boards/update_place/main with storage pandamium.leader_boards:io args
