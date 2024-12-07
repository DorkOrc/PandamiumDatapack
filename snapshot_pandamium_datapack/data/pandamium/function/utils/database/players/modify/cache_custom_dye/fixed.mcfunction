execute unless data storage pandamium.db.players:io selected.entry.data.custom_dye{type:4b} run return 0

data modify storage pandamium:local functions."pandamium:utils/database/players/modify/cache_fixed_color" set value {}

# colours
execute store result storage pandamium:local functions."pandamium:utils/database/players/modify/cache_fixed_color".color_0 int 1 store result storage pandamium:local functions."pandamium:utils/database/players/modify/cache_fixed_color".color_1 int 1 store result storage pandamium:local functions."pandamium:utils/database/players/modify/cache_fixed_color".color_2 int 1 store result storage pandamium:local functions."pandamium:utils/database/players/modify/cache_fixed_color".color_3 int 1 run data get storage pandamium.db.players:io selected.entry.data.custom_dye.colors[0]
data modify storage pandamium:local functions."pandamium:utils/database/players/modify/cache_fixed_color".color_1 set from storage pandamium.db.players:io selected.entry.data.custom_dye.colors[1]
data modify storage pandamium:local functions."pandamium:utils/database/players/modify/cache_fixed_color".color_2 set from storage pandamium.db.players:io selected.entry.data.custom_dye.colors[2]
data modify storage pandamium:local functions."pandamium:utils/database/players/modify/cache_fixed_color".color_3 set from storage pandamium.db.players:io selected.entry.data.custom_dye.colors[3]

# update cache
data modify storage pandamium:local functions."pandamium:utils/database/players/modify/cache_fixed_color".username set from storage pandamium.db.players:io selected.entry.username
return run function pandamium:impl/database/cache/modify/add_custom_dye.fixed_entry/main with storage pandamium:local functions."pandamium:utils/database/players/modify/cache_fixed_color"
