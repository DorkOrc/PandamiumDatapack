# arguments: id

data remove storage pandamium.db.player_cache:io selected

$execute store result storage pandamium.db.player_cache:io selected.id int 1 run scoreboard players get @a[scores={id=$(id)},limit=1] id
function pandamium:impl/database/cache/load/main with storage pandamium.db.player_cache:io selected

execute unless data storage pandamium.db.player_cache:io selected.entry run data remove storage pandamium.db.player_cache:io selected
