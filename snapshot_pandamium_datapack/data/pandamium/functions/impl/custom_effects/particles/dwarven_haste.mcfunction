execute at @a[scores={custom_effects.has_effect.dwarven_haste=1},predicate=!pandamium:has_effect/haste] if predicate {condition:random_chance,chance:0.05} run particle minecraft:entity_effect 0.8510 0.7529 0.2627 1 ~ ~0.5 ~ 0 0.25 0 0.01 1
execute at @a[scores={custom_effects.has_effect.dwarven_haste=1},predicate=pandamium:has_effect/haste] if predicate {condition:random_chance,chance:0.05} run particle minecraft:entity_effect 1.0 0.7529 0.2627 1 ~ ~0.5 ~ 0 0.25 0 0.01 1

execute if entity @a[scores={custom_effects.has_effect.dwarven_haste=1},limit=1] run schedule function pandamium:impl/custom_effects/particles/dwarven_haste 1t
