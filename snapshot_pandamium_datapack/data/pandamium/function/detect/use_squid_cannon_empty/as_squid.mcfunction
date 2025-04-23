execute if predicate pandamium:in_spawn run return 0

scoreboard players set <found_squid> variable 1

data modify storage pandamium:local functions."pandamium:detect/use_squid_cannon_empty/*".entity_data set from entity @s {}

execute if entity @s[type=squid] run data modify storage pandamium:local functions."pandamium:detect/use_squid_cannon_empty/*".entity_data.id set value "minecraft:squid"
execute if entity @s[type=glow_squid] run data modify storage pandamium:local functions."pandamium:detect/use_squid_cannon_empty/*".entity_data.id set value "minecraft:glow_squid"

data remove storage pandamium:local functions."pandamium:detect/use_squid_cannon_empty/*".entity_data.UUID
data remove storage pandamium:local functions."pandamium:detect/use_squid_cannon_empty/*".entity_data.fall_distance
data remove storage pandamium:local functions."pandamium:detect/use_squid_cannon_empty/*".entity_data.Motion
data remove storage pandamium:local functions."pandamium:detect/use_squid_cannon_empty/*".entity_data.OnGround
data remove storage pandamium:local functions."pandamium:detect/use_squid_cannon_empty/*".entity_data.Passengers
data remove storage pandamium:local functions."pandamium:detect/use_squid_cannon_empty/*".entity_data.PortalCooldown
data remove storage pandamium:local functions."pandamium:detect/use_squid_cannon_empty/*".entity_data.Pos
data remove storage pandamium:local functions."pandamium:detect/use_squid_cannon_empty/*".entity_data.Rotation
data remove storage pandamium:local functions."pandamium:detect/use_squid_cannon_empty/*".entity_data.TicksFrozen
data remove storage pandamium:local functions."pandamium:detect/use_squid_cannon_empty/*".entity_data.Brain
data remove storage pandamium:local functions."pandamium:detect/use_squid_cannon_empty/*".entity_data.DeathTime
data remove storage pandamium:local functions."pandamium:detect/use_squid_cannon_empty/*".entity_data.FallFlying
data remove storage pandamium:local functions."pandamium:detect/use_squid_cannon_empty/*".entity_data.HurtByTimestamp
data remove storage pandamium:local functions."pandamium:detect/use_squid_cannon_empty/*".entity_data.HurtTime
data remove storage pandamium:local functions."pandamium:detect/use_squid_cannon_empty/*".entity_data.leash
data remove storage pandamium:local functions."pandamium:detect/use_squid_cannon_empty/*".entity_data.sleeping_pos

function pandamium:utils/kill_mob_discretely
