$data modify storage pandamium:templates macro.index__username.username set from storage pandamium.db:players entries[$(index)].username
function pandamium:startup/temporary_database_fix/upgrade_entry with storage pandamium:templates macro.index__username

execute store result storage pandamium:templates macro.index.index int 1 store result storage pandamium:templates macro.index__username.index int 1 run scoreboard players add <index> variable 1
execute if score <index> variable < <length> variable run function pandamium:startup/temporary_database_fix/loop with storage pandamium:templates macro.index
