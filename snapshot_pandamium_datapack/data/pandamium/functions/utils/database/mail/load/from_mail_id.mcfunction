# arguments: mail_id

data remove storage pandamium.db:mail selected

$execute unless data storage pandamium.db:mail mail_id_indexes."$(mail_id)" run return fail
$execute store result storage pandamium.db:mail selected.index int 1 store result score <index> variable run data get storage pandamium.db:mail mail_id_indexes."$(mail_id)"
execute if data storage pandamium.db:mail selected.index run function pandamium:impl/database/mail/load/main with storage pandamium.db:mail selected
execute unless data storage pandamium.db:mail selected.entry run data remove storage pandamium.db:mail selected

return run scoreboard players get <index> variable
