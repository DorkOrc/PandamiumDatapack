# arguments: uuid_0, uuid_1, uuid_2, uuid_3

$execute if data storage pandamium.db.players:data uuid_indexes."$(uuid_0)_$(uuid_1)_$(uuid_2)_$(uuid_3)" store result storage pandamium.db.players:io selected.index int 1 run data get storage pandamium.db.players:data uuid_indexes."$(uuid_0)_$(uuid_1)_$(uuid_2)_$(uuid_3)"
