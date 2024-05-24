execute if block ~ ~ ~ #slabs[type=double] run scoreboard players set <hit> variable 1
execute if score <hit> variable matches 0 if block ~ ~ ~ #slabs[type=bottom] align xyz positioned ~ ~ ~ if entity @s[dx=0] align xyz positioned ~ ~-0.5 ~ if entity @s[dx=0] run scoreboard players set <hit> variable 1
execute if score <hit> variable matches 0 if block ~ ~ ~ #slabs[type=top] align xyz positioned ~ ~0.5 ~ if entity @s[dx=0] align xyz positioned ~ ~ ~ if entity @s[dx=0] run scoreboard players set <hit> variable 1
