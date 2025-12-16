# arguments: tag, max_distance, x, y, z, nbt

# must be away from its starting location
$execute positioned $(x) $(y) $(z) if entity @e[limit=1,distance=..$(max_distance),type=$(entity_type),tag=$(tag)] run return 0

# must not be near a player
$execute at @e[limit=1,x=0,type=$(entity_type),tag=$(tag)] if entity @a[limit=1,predicate=!pandamium:player/any_invisible_staff_state,distance=..20] run return 0

$kill @e[x=0,type=$(entity_type),tag=$(tag)]
$summon $(entity_type) $(x) $(y) $(z) $(nbt)
