data remove storage pandamium.db.mail:io selected.entry.gametime

execute if data storage pandamium.db.mail:io selected.entry.hour_id unless data storage pandamium.db.mail:io selected.entry{draft:1b} store result storage pandamium.db.mail:io selected.entry.datetime_sent int 3600 run data get storage pandamium.db.mail:io selected.entry.hour_id
execute if data storage pandamium.db.mail:io selected.entry.hour_id if data storage pandamium.db.mail:io selected.entry{draft:1b} store result storage pandamium.db.mail:io selected.entry.datetime_created int 3600 run data get storage pandamium.db.mail:io selected.entry.hour_id
data remove storage pandamium.db.mail:io selected.entry.hour_id
