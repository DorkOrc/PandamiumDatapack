# arguments: id

$execute if data storage pandamium:cache online_players[{id:$(id)}] run data modify storage pandamium:cache online_players[{id:$(id)}] set from storage pandamium.db.player_cache:io selected.entry
