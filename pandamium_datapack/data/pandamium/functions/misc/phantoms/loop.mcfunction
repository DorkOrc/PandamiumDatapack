execute if predicate pandamium:is_night as @a[x=0,scores={time_since_rest=72000..}] unless entity @s[y=-64,dy=128,gamemode=spectator,scores={disable_insomnia=1}] at @s if blocks ~ ~ ~ ~ 319 ~ ~ ~1 ~ masked positioned ~ ~28 ~ run function pandamium:misc/phantoms/spawn
schedule function pandamium:misc/phantoms/loop 2400t
