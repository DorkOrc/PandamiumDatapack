# arguments: uuid0, uuid1, uuid2, uuid3, index

$data modify storage pandamium.db.entities:data uuid_indexes."$(uuid0)_$(uuid1)_$(uuid2)_$(uuid3)" set value $(index)
