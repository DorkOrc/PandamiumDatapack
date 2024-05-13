# arguments: index, mail_id

$data modify storage pandamium.db.mail:data mail_id_indexes."$(mail_id)" set value $(index)
