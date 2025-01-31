data modify storage pandamium:local functions."pandamium:impl/queue/actions/datafixer.db.mail/*".mail_id set from storage pandamium:queue selected.entry.mail_ids[-1]
data remove storage pandamium:queue selected.entry.mail_ids[-1]

function pandamium:utils/database/mail/load/from_mail_id with storage pandamium:local functions."pandamium:impl/queue/actions/datafixer.db.mail/*"
# automatically patches and saves upon loading whilst staying selected ^
