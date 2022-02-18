data modify storage pandamium:temp Owner set from entity @s Owner
execute store success score <does_not_match> variable run data modify storage pandamium:temp Owner set from storage pandamium:temp UUID

execute if score <does_not_match> variable matches 0 run kill
