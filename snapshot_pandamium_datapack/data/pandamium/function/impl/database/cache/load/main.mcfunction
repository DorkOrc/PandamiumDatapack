# arguments: id

$data modify storage pandamium.db.player_cache:io selected.entry set from storage pandamium:cache online_players[{id:$(id)}]
