# arguments: tag, x, y, z, nbt

# must be stationary for two consecutive checks
$execute as @e[limit=1,x=0,type=$(entity_type),tag=$(tag)] unless predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{movement:{speed:{max:1}}}} run return run tag @s remove hub.minecart_stationary
$execute as @e[limit=1,x=0,type=$(entity_type),tag=$(tag),tag=!hub.minecart_stationary] run return run tag @s add hub.minecart_stationary

# must not be near a player
$execute at @e[limit=1,x=0,type=$(entity_type),tag=$(tag)] if entity @a[limit=1,predicate=!pandamium:player/any_invisible_staff_state,distance=..5] run return 0

$kill @e[x=0,type=$(entity_type),tag=$(tag)]
$summon $(entity_type) $(x) $(y) $(z) $(nbt)
