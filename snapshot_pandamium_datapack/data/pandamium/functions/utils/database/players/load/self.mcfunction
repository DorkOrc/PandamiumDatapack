data remove storage pandamium.db.players:io selected

execute store result storage pandamium:templates index.index int 1 store result storage pandamium.db.players:io selected.index int 1 run scoreboard players get @s db.players.index
function pandamium:impl/database/players/load/main with storage pandamium:templates index

execute unless data storage pandamium.db.players:io selected.entry run data remove storage pandamium.db.players:io selected
