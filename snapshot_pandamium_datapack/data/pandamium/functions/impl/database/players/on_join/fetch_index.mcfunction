# arguments: $(uuid0), $(uuid1), $(uuid2), $(uuid3)

$execute store success score <entry_exists> variable store result storage pandamium:templates macro.index.index int 1 store result storage pandamium:templates macro.index__old_username__new_username.index int 1 run data get storage pandamium.db:players uuid_indexes."$(uuid0)_$(uuid1)_$(uuid2)_$(uuid3)"

execute if score <entry_exists> variable matches 1 run function pandamium:impl/database/players/on_join/update_entry/check_username with storage pandamium:templates macro.index
$execute if score <entry_exists> variable matches 0 run function pandamium:impl/database/players/on_join/new_entry/create_new_database_entry {uuid0:"$(uuid0)",uuid1:"$(uuid1)",uuid2:"$(uuid2)",uuid3:"$(uuid3)"}
