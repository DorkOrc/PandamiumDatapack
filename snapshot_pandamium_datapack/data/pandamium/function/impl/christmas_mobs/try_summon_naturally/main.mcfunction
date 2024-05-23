#
function pandamium:utils/database/regions/load_chunk/here
execute if data storage pandamium.db.regions:io selected.chunk.entry.has_summoned_christmas_mob run return 0

#
data modify storage pandamium:templates macro.entity_type.entity_type set value "minecraft:none"
scoreboard players set <has_summoned_christmas_mob> variable 0

execute store result score <rng> variable run random value 1..100
execute if score <rng> variable matches 1..12 run data modify storage pandamium:templates macro.entity_type.entity_type set value "minecraft:zombie"
execute if score <rng> variable matches 13..15 run data modify storage pandamium:templates macro.entity_type.entity_type set value "minecraft:skeleton"

scoreboard players set <i> variable 0
execute summon marker store result score <has_summoned_christmas_mob> variable run function pandamium:impl/christmas_mobs/try_summon_naturally/find_valid_spawn_location

#
execute store result storage pandamium.db.regions:io selected.chunk.entry.has_summoned_christmas_mob byte 1 if score <has_summoned_christmas_mob> variable matches 1
execute if score <has_summoned_christmas_mob> variable matches 1 run function pandamium:impl/christmas_mobs/try_summon_naturally/print_debug_message with storage pandamium:templates macro.x__y__z__dimension
function pandamium:utils/database/regions/save

return run execute if score <has_summoned_christmas_mob> variable matches 1
