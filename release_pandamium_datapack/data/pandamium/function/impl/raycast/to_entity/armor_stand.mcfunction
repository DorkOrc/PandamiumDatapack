execute unless block ~ ~ ~ #pandamium:raycast/ignore run function pandamium:impl/raycast/check_to_continue
execute if score <hit> variable matches 0 as @e[type=armor_stand,dx=0] positioned ~-1 ~-1 ~-1 if entity @s[dx=0] store success score <hit> variable store success score <hit_target> variable run data modify storage pandamium:temp origin set from entity @s UUID

execute if score <hit> variable matches 1 run tp @s ~ ~ ~
execute if score <hit> variable matches 0 run scoreboard players remove <ttl> variable 1
execute if score <hit> variable matches 0 if score <ttl> variable matches 1.. positioned ^ ^ ^0.03125 run function pandamium:impl/raycast/to_entity/armor_stand
