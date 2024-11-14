execute positioned ~ ~-0.2 ~ anchored eyes rotated as @s run function pandamium:impl/particles/custom_trails/head/devil_horns

execute positioned ~ ~0.601 ~ store success score <small_hitbox> variable unless entity @s[dx=0]
execute if score <small_hitbox> variable matches 0 unless predicate pandamium:sneaking rotated ~ 0 positioned ~ ~-0.2 ~ anchored eyes run return run function pandamium:impl/particles/custom_trails/body/devil_wings
execute if score <small_hitbox> variable matches 0 rotated ~ 0 positioned ^ ^ ^-0.02 rotated ~ 30 positioned ~ ~-0.2 ~ anchored eyes run return run function pandamium:impl/particles/custom_trails/body/devil_wings
execute if score <small_hitbox> variable matches 1 if predicate pandamium:on_ground rotated ~ 90 positioned ^ ^0.5 ^-0.05 positioned ~ ~-0.2 ~ anchored eyes run return run function pandamium:impl/particles/custom_trails/body/devil_wings
execute if score <small_hitbox> variable matches 1 rotated ~ ~90 positioned ^ ^0.5 ^-0.05 positioned ~ ~-0.2 ~ anchored eyes run return run function pandamium:impl/particles/custom_trails/body/devil_wings
