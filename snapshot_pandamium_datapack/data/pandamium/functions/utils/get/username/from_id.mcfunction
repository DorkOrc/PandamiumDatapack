# arguments: id
# outputs: storage pandamium:temp username

data remove storage pandamium:temp username

$execute store result storage pandamium:templates macro.index.index int 1 run data get storage pandamium.db:players id_indexes."$(id)"
$execute if data storage pandamium.db:players id_indexes."$(id)" run function pandamium:impl/get/username/with_index with storage pandamium:templates macro.index
