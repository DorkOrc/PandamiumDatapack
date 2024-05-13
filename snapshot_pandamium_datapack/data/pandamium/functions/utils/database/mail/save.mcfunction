execute unless data storage pandamium.db.mail:io selected.entry run return run data remove storage pandamium.db.mail:io selected
execute unless data storage pandamium.db.mail:io selected.index run return run data remove storage pandamium.db.mail:io selected

execute store result storage pandamium:templates macro.index.index int 1 run data get storage pandamium.db.mail:io selected.index
function pandamium:impl/database/mail/save/replace_from_selected with storage pandamium:templates macro.index

data remove storage pandamium.db.mail:io selected
