scoreboard players set <blockstate_facing_x> variable 1
execute unless block ~ ~ ~ #wall_hanging_signs[facing=east] unless block ~ ~ ~ #wall_hanging_signs[facing=west] run scoreboard players set <blockstate_facing_x> variable 0

execute if score <blockstate_facing_x> variable matches 1 align xyz positioned ~0.4375 ~ ~0.0625 if entity @s[dx=0] align xyz positioned ~-0.4375 ~-0.375 ~-0.0625 if entity @s[dx=0] run scoreboard players set <hit> variable 1
execute if score <blockstate_facing_x> variable matches 1 if score <raycast_hit_target> variable matches 0 align xyz positioned ~0.375 ~0.875 ~ if entity @s[dx=0] align xyz positioned ~-0.375 ~ ~ if entity @s[dx=0] run scoreboard players set <hit> variable 1

execute unless score <blockstate_facing_x> variable matches 1 align xyz positioned ~0.0625 ~ ~0.4375 if entity @s[dx=0] align xyz positioned ~-0.0625 ~-0.375 ~-0.4375 if entity @s[dx=0] run scoreboard players set <hit> variable 1
execute unless score <blockstate_facing_x> variable matches 1 if score <raycast_hit_target> variable matches 0 align xyz positioned ~ ~0.875 ~0.375 if entity @s[dx=0] align xyz positioned ~ ~ ~-0.375 if entity @s[dx=0] run scoreboard players set <hit> variable 1
