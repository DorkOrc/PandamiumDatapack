$function pandamium:impl/database/players/on_join/join_events/actions/$(type) with storage pandamium.db.players:io selected.entry.data.join_events[0]

data remove storage pandamium.db.players:io selected.entry.data.join_events[0]
execute if data storage pandamium.db.players:io selected.entry.data.join_events[0] run function pandamium:impl/database/players/on_join/join_events/loop with storage pandamium.db.players:io selected.entry.data.join_events[0]
