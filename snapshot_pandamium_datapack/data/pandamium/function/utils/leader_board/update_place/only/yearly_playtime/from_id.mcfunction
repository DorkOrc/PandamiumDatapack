# arguments: id

data modify storage pandamium.leader_boards:io args set value {type:"yearly_playtime"}
$execute store result storage pandamium.leader_boards:io args.id int 1 run scoreboard players set <id> variable $(id)

function pandamium:impl/leader_boards/update_place/main with storage pandamium.leader_boards:io args
