execute if block ~ ~ ~ #ceiling_hanging_signs[rotation=0] align xyz positioned ~0.0625 ~ ~0.4375 if entity @s[dx=0] align xyz positioned ~-0.0625 ~-0.375 ~-0.4375 if entity @s[dx=0] run scoreboard players set <hit> variable 1
execute if block ~ ~ ~ #ceiling_hanging_signs[rotation=4] align xyz positioned ~0.4375 ~ ~0.0625 if entity @s[dx=0] align xyz positioned ~-0.4375 ~-0.375 ~-0.0625 if entity @s[dx=0] run scoreboard players set <hit> variable 1
execute if block ~ ~ ~ #ceiling_hanging_signs[rotation=8] align xyz positioned ~0.0625 ~ ~0.4375 if entity @s[dx=0] align xyz positioned ~-0.0625 ~-0.375 ~-0.4375 if entity @s[dx=0] run scoreboard players set <hit> variable 1
execute if block ~ ~ ~ #ceiling_hanging_signs[rotation=12] align xyz positioned ~0.4375 ~ ~0.0625 if entity @s[dx=0] align xyz positioned ~-0.4375 ~-0.375 ~-0.0625 if entity @s[dx=0] run scoreboard players set <hit> variable 1

scoreboard players set <straight_on> variable 1
execute unless block ~ ~ ~ #ceiling_hanging_signs[rotation=0] unless block ~ ~ ~ #ceiling_hanging_signs[rotation=4] unless block ~ ~ ~ #ceiling_hanging_signs[rotation=8] unless block ~ ~ ~ #ceiling_hanging_signs[rotation=12] run scoreboard players set <straight_on> variable 0
execute if score <straight_on> variable matches 0 align xyz positioned ~0.1875 ~ ~0.1875 if entity @s[dx=0] align xyz positioned ~-0.1875 ~ ~-0.1875 if entity @s[dx=0] run scoreboard players set <hit> variable 1
