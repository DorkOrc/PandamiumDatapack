# arguments: username, suuid, uuid0, uuid1, uuid2, uuid3, id

$execute store result storage pandamium:temp arguments.index int 1 store result storage pandamium.db:players uuid_indexes."$(uuid0)_$(uuid1)_$(uuid2)_$(uuid3)" int 1 store result storage pandamium.db:players username_indexes."$(username)" int 1 store result storage pandamium.db:players id_indexes."$(id)" int 1 store result storage pandamium.db:players string_uuid_indexes."$(suuid)" int 1 if data storage pandamium.db:players entries[]
$data modify storage pandamium.db:players entries append value {data:{},uuid:[I;$(uuid0),$(uuid1),$(uuid2),$(uuid3)],string_uuid:"$(suuid)",username:"$(username)",id:$(id)}

function pandamium:impl/database/players/force_add_user_to_database/with_index with storage pandamium:temp arguments
