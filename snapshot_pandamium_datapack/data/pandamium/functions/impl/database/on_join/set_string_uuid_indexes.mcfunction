$data modify storage pandamium.db:players string_uuid_indexes."$(string_uuid)" set value $(index)
$data modify storage pandamium.db:players entries[-1].string_uuid set value "$(string_uuid)"
