# find location
scoreboard players add <i> variable 1
spreadplayers ~ ~ 0 32 false @s
execute positioned as @s positioned over motion_blocking_no_leaves run tp @s ~ ~ ~

scoreboard players set <can_summon_here> variable 0
execute positioned as @s if block ~ ~ ~ #pandamium:no_solid_collision if block ~ ~1 ~ #pandamium:no_solid_collision run scoreboard players set <can_summon_here> variable 1

execute positioned as @s if block ~ ~-1 ~ water run scoreboard players set <can_summon_here> variable 0
execute positioned as @s if block ~ ~-1 ~ lava run scoreboard players set <can_summon_here> variable 0
execute positioned as @s if block ~ ~-1 ~ packed_ice run scoreboard players set <can_summon_here> variable 0
execute positioned as @s if entity @a[distance=..10,limit=1] run scoreboard players set <can_summon_here> variable 0
execute positioned as @s unless predicate pandamium:no_light run scoreboard players set <can_summon_here> variable 0
execute positioned as @s if score <can_summon_here> variable matches 0 unless score <i> variable matches 0..3 run return run function pandamium:impl/christmas_mobs/try_summon_naturally/find_valid_spawn_location

# kill marker
kill @s

execute positioned as @s if block ~ ~-1 ~ lava run return 0
execute positioned as @s positioned ~ ~-1 ~ if predicate pandamium:in_water positioned ~ ~-1 ~ unless predicate pandamium:in_water run return 0
execute positioned as @s positioned ~ ~-1 ~ if predicate pandamium:in_water unless biome ~ ~ ~ #pandamium:spawns_drowneds run return 0
execute positioned as @s positioned ~ ~-1 ~ if predicate pandamium:in_water run tp @s ~ ~-1 ~

# determine entity type
execute positioned as @s if biome ~ ~ ~ minecraft:mushroom_fields run return 0
execute positioned as @s if predicate pandamium:in_water if data storage pandamium:templates macro.entity_type{entity_type:"minecraft:zombie"} if biome ~ ~ ~ #pandamium:spawns_drowneds run data modify storage pandamium:templates macro.entity_type.entity_type set value "minecraft:drowned"
execute positioned as @s if predicate pandamium:in_water unless data storage pandamium:templates macro.entity_type{entity_type:"minecraft:drowned"} run return 0
execute positioned as @s if biome ~ ~ ~ #pandamium:spawns_husks if data storage pandamium:templates macro.entity_type{entity_type:"minecraft:zombie"} run data modify storage pandamium:templates macro.entity_type.entity_type set value "minecraft:husk"
execute positioned as @s if dimension minecraft:the_nether if data storage pandamium:templates macro.entity_type{entity_type:"minecraft:skeleton"} run data modify storage pandamium:templates macro.entity_type.entity_type set value "minecraft:wither_skeleton"
execute positioned as @s if biome ~ ~ ~ #pandamium:spawns_strays if data storage pandamium:templates macro.entity_type{entity_type:"minecraft:skeleton"} run data modify storage pandamium:templates macro.entity_type.entity_type set value "minecraft:stray"

# summon mob
function pandamium:utils/get/dimension_string_id/from_position
data modify storage pandamium:templates macro.x__y__z__dimension.dimension set from storage pandamium:temp dimension_string_id
execute positioned as @s run function pandamium:utils/get/position
execute store result storage pandamium:templates macro.x__y__z__dimension.x int 1 run scoreboard players get <x> variable
execute store result storage pandamium:templates macro.x__y__z__dimension.y int 1 run scoreboard players get <y> variable
execute store result storage pandamium:templates macro.x__y__z__dimension.z int 1 run scoreboard players get <z> variable
execute positioned as @s run return run function pandamium:impl/christmas_mobs/try_summon_naturally/do_summon with storage pandamium:templates macro.entity_type

return 0
