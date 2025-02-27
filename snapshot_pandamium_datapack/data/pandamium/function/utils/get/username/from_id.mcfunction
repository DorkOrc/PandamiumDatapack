# arguments: id
# outputs: storage pandamium:temp username

data remove storage pandamium:temp username

$execute store result storage pandamium:local functions."pandamium:utils/get/username/from_id".index int 1 run data get storage pandamium.db.players:data id_indexes."$(id)"
$execute if data storage pandamium.db.players:data id_indexes."$(id)" run function pandamium:impl/get/username/with_index with storage pandamium:local functions."pandamium:utils/get/username/from_id"
