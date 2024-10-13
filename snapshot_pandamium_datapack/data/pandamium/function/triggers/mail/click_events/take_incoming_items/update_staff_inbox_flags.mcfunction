# arguments: id, mail_id

$data remove storage pandamium.db.mail:data staff_inbox[{mail_id:$(mail_id)}].has_unclaimed_items
