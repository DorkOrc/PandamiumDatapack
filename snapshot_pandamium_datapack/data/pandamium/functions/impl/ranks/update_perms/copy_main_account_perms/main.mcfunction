execute store result storage pandamium:templates macro.id.id int 1 run scoreboard players get @s alt_of
function pandamium:utils/database/players/load/from_id with storage pandamium:templates macro.id
function pandamium:impl/ranks/update_perms/copy_main_account_perms/with_username with storage pandamium.db:players selected.entry
