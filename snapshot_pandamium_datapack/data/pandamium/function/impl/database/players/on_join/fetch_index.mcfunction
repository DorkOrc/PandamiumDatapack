# arguments: uuid_0, uuid_1, uuid_2, uuid_3

$execute store success score <entry_exists> variable store result storage pandamium:local functions."pandamium:impl/database/players/on_join/*".index int 1 run data get storage pandamium.db.players:data uuid_indexes."$(uuid_0)_$(uuid_1)_$(uuid_2)_$(uuid_3)"

execute if score <entry_exists> variable matches 0 run data remove storage pandamium:local functions."pandamium:impl/database/players/on_join/*".index
execute if score <entry_exists> variable matches 0 run return run function pandamium:impl/database/players/on_join/new_entry/create_new_database_entry with storage pandamium:local functions."pandamium:impl/database/players/on_join/*"

execute if score <entry_exists> variable matches 1 run return run function pandamium:impl/database/players/on_join/update_entry/check_username with storage pandamium:local functions."pandamium:impl/database/players/on_join/*"
