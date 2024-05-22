# arguments: expired_hour_id

# delete expired entries
$data remove storage pandamium.db.players:data entries[].data.tp_history[{hour_id: $(expired_hour_id), recent: 0b}]
