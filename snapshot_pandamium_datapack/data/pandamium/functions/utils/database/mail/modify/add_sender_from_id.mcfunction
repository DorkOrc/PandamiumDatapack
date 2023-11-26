# arguments: id

execute unless data storage pandamium.db:mail selected.entry run return fail
execute if data storage pandamium.db:mail selected.entry.sender{type:"player"} run return fail

$data modify storage pandamium.db:mail selected.entry.sender set value {type:"player",id:$(id)}
