scoreboard players reset @s detect.use.bow
advancement revoke @s only pandamium:detect/shoot_arrow

# remove fire from lit arrows in spawn
execute at @s[predicate=pandamium:in_spawn] anchored eyes positioned ^ ^ ^ as @e[type=#arrows,predicate=pandamium:periodic_tick/on_load,predicate=pandamium:on_fire,distance=..10] run data merge entity @s {Fire:0s,HasVisualFire:1b}
