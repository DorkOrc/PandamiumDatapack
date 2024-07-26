execute as @p[distance=..5,predicate=!pandamium:player/is_hidden] run function pandamium:utils/database/players/load/self
execute if entity @a[distance=..5,predicate=!pandamium:player/is_hidden,limit=1] run return run data modify entity @s Owner set from storage pandamium.db.players:io selected.entry.uuid
data modify entity @s Owner set value [I; 0, 0, 0, 0]
