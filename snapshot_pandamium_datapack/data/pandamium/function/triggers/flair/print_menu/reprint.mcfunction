function pandamium:utils/database/players/load/self

data modify storage pandamium:local functions."pandamium:triggers/flair/*".base_color_root.color set from storage pandamium.db.players:io selected.entry.data.flair.color
execute if data storage pandamium.db.players:io selected.entry.data.flair.type unless data storage pandamium.db.players:io selected.entry.data.flair.type{} run function pandamium:triggers/flair/get_current_flair with storage pandamium.db.players:io selected.entry.data.flair
execute if data storage pandamium.db.players:io selected.entry.data.flair.type{} run function pandamium:triggers/flair/get_current_flair_inlined

# menu
function pandamium:triggers/flair/print_menu/main
