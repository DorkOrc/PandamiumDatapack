data modify storage pandamium:temp Owner set from entity @s Owner
execute store success score <uuid_does_not_match> variable run data modify storage pandamium:temp Owner set from storage pandamium:temp NBT.UUID

execute unless score <uuid_does_not_match> variable matches 1 run tag @s add owner_match
execute if entity @s[type=chicken] if data entity @s CustomName run tag @s add owner_match

execute unless score <uuid_does_not_match> variable matches 1 run say hi, I have §lowner_match§r tag
