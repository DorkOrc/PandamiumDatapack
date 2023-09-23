data modify storage pandamium:temp get_integer_uuid.character set string storage pandamium:temp get_integer_uuid.input 0 1
data modify storage pandamium:temp get_integer_uuid.input set string storage pandamium:temp get_integer_uuid.input 1

execute unless data storage pandamium:temp get_integer_uuid{character:"-"} run function pandamium:impl/database/players/force_add_user_to_database/get_integer_uuid/with_character with storage pandamium:temp get_integer_uuid

execute unless data storage pandamium:temp get_integer_uuid{input:""} if score <valid_suuid> variable matches 1 run function pandamium:impl/database/players/force_add_user_to_database/get_integer_uuid/loop
