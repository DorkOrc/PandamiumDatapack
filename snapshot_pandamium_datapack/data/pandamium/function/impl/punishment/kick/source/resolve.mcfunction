execute if data storage pandamium:local functions."pandamium:impl/punishment/kick/*".source{} unless data storage pandamium:local functions."pandamium:impl/punishment/kick/*".source.type run return run function pandamium:utils/log_exception {args:{function:"pandamium:impl/punishment/kick/resolve",message:'No source type was specified'}}

execute if data storage pandamium:local functions."pandamium:impl/punishment/kick/*".source.type run return 1

# resolve target
data remove storage pandamium:local functions."pandamium:impl/punishment/kick/*".id
data modify storage pandamium:local functions."pandamium:impl/punishment/kick/*".id set string storage pandamium:local functions."pandamium:impl/punishment/kick/*".source
execute store success score <non_string> variable run data modify storage pandamium:local functions."pandamium:impl/punishment/kick/*".id set from storage pandamium:local functions."pandamium:impl/punishment/kick/*".source
execute unless score <non_string> variable matches 1 run data modify storage pandamium:local functions."pandamium:impl/punishment/kick/*".username set from storage pandamium:local functions."pandamium:impl/punishment/kick/*".source

data remove storage pandamium.db.players:io selected
execute if score <non_string> variable matches 1 run function pandamium:utils/database/players/load/from_id with storage pandamium:local functions."pandamium:impl/punishment/kick/*"
execute unless score <non_string> variable matches 1 run function pandamium:utils/database/players/load/from_username with storage pandamium:local functions."pandamium:impl/punishment/kick/*"
execute unless data storage pandamium.db.players:io selected run return run function pandamium:utils/log_exception {args:{function:"pandamium:impl/punishment/kick/resolve",message:'Could not resolve source value to a registered player username'}}

data modify storage pandamium:local functions."pandamium:impl/punishment/kick/*".source set value {type:"player"}
data modify storage pandamium:local functions."pandamium:impl/punishment/kick/*".source.username set from storage pandamium.db.players:io selected.entry.username

return 1
