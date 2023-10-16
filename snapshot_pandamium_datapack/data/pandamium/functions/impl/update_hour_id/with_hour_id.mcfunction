# arguments: id

$data remove storage pandamium.db:players entries[].data.tp_history[{hour_id:$(id),recent:0b}]
