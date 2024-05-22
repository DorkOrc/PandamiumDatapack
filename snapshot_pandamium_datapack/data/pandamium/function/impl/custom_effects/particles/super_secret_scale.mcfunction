execute as @a[scores={custom_effects.has_effect.super_secret_scale=1}] if predicate {condition:random_chance,chance:0.05} at @s anchored eyes positioned ^ ^ ^ run particle minecraft:entity_effect{color:[1.0f,1.0f,1.0f,0.5f]} ~ ~-0.5 ~ 0 0.25 0 0.01 1

execute if entity @a[scores={custom_effects.has_effect.super_secret_scale=1},limit=1] run schedule function pandamium:impl/custom_effects/particles/super_secret_scale 1t
