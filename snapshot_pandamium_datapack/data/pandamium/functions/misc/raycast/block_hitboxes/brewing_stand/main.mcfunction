execute align xyz positioned ~0.0625 ~ ~0.0625 if entity @s[dx=0] align xyz positioned ~-0.0625 ~-0.875 ~-0.0625 if entity @s[dx=0] run scoreboard players set <hit> variable 1
execute if score <hit> variable matches 0 align xyz positioned ~0.4375 ~ ~0.4375 if entity @s[dx=0] align xyz positioned ~-0.4375 ~-0.125 ~-0.4375 if entity @s[dx=0] run scoreboard players set <hit> variable 1
