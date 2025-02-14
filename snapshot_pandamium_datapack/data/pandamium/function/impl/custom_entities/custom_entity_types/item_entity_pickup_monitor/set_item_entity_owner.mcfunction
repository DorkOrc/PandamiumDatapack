execute as @p[distance=..10,predicate=!pandamium:player/is_hidden] run function pandamium:utils/database/players/load/self
data modify entity @s Owner set from storage pandamium.db.players:io selected.entry.uuid
