# arguments: index, mail_id

$data modify storage pandamium.db:mail mail_id_indexes."$(mail_id)" set value $(index)
