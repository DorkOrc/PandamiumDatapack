function pandamium:utils/database/regions/load_chunk/here

execute if data storage pandamium.db.regions:io selected.chunk.entry.has_summoned_christmas_mob run return fail

execute store result score <entity_type> variable run random value 1..100

scoreboard players set <i> variable 0
execute if score <entity_type> variable matches 1..12 positioned ~ -66 ~ summon zombie run function pandamium:impl/initialise_christmas_mob
execute if score <entity_type> variable matches 13..15 positioned ~ -66 ~ summon skeleton run function pandamium:impl/initialise_christmas_mob

execute if score <entity_type> variable matches 1..15 run data modify storage pandamium.db.regions:io selected.chunk.entry.has_summoned_christmas_mob set value 1b
execute if score <entity_type> variable matches 16..100 run data modify storage pandamium.db.regions:io selected.chunk.entry.has_summoned_christmas_mob set value 0b
function pandamium:utils/database/regions/save

return 1
