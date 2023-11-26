# arguments: mail_id, index

$data modify storage pandamium.db:mail mail_id_indexes."$(mail_id)" set value $(index)
