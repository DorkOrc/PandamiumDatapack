# arguments: id, username, lowercase_username, (...)

$data modify storage pandamium.db.players:data username_indexes."$(username)" set from storage pandamium.db.players:data id_indexes."$(id)"
$data modify storage pandamium.db.players:data lowercase_username_indexes."$(lowercase_username)" set from storage pandamium.db.players:data id_indexes."$(id)"
