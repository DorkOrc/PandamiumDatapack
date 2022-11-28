execute as @e[dx=0,type=item_frame] positioned ~-1 ~-1 ~-1 if entity @s[dx=0] store success score <raycast_hit_target> variable run tag @s add raycast.selected
execute if score <raycast_hit_target> variable matches 0 as @e[dx=0,type=glow_item_frame] positioned ~-1 ~-1 ~-1 if entity @s[dx=0] store success score <raycast_hit_target> variable run tag @s add raycast.selected
execute if score <raycast_obstructable> variable matches 1 unless block ~ ~ ~ #pandamium:raycast_continue run scoreboard players set <ttl> variable 0

scoreboard players remove <ttl> variable 1
execute if score <raycast_hit_target> variable matches 0 if score <ttl> variable matches 1.. positioned ^ ^ ^0.03125 run function pandamium:misc/raycast/item_frame/iter
