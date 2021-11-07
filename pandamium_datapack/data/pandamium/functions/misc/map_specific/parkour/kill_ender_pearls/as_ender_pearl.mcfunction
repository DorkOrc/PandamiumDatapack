data modify storage pandamium:temp NBT2 set from entity @s
execute store success score <does_not_match> variable run data modify storage pandamium:temp NBT2.Owner set from storage pandamium:temp NBT.UUID

execute if score <does_not_match> variable matches 0 run kill
