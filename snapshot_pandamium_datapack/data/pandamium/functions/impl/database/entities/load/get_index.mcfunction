# arguments: uuid0, uuid1, uuid2, uuid3

$execute unless data storage pandamium.db:entities uuid_indexes."$(uuid0)_$(uuid1)_$(uuid2)_$(uuid3)" run function pandamium:impl/database/entities/create/main
$execute store result storage pandamium.db:entities selected.index int 1 run data get storage pandamium.db:entities uuid_indexes."$(uuid0)_$(uuid1)_$(uuid2)_$(uuid3)"
