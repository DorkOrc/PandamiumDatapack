# arguments: mail_id, index

$data modify storage pandamium.db.mail:data mail_id_indexes."$(mail_id)" set value $(index)
