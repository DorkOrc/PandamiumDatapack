# arguments: lowercase_username, username, (...)

$data modify storage pandamium.db.players:data lowercase_username_indexes."$(lowercase_username)" set from storage pandamium.db.players:data username_indexes."$(username)"
