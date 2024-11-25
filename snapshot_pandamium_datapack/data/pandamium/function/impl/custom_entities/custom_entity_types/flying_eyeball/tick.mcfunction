# on load
execute if predicate pandamium:periodic_tick/on_load unless function pandamium:impl/custom_entities/custom_entity_types/flying_eyeball/on_load run return 0

# remove if controller no longer exists
execute unless predicate pandamium:riding_entity run return run function pandamium:utils/kill_entity_stack_discretely

# rotate visual elements to match controller
execute on vehicle rotated as @s facing ^ ^ ^-1 on passengers run rotate @s[tag=!pandamium.custom_entity.brain] ~180 ~
execute rotated as @s on passengers run rotate @s[tag=!pandamium.custom_entity.brain] ~ ~

# handle being attacked
scoreboard players set <attacked> variable 0
execute on vehicle on attacker run scoreboard players set <attacked> variable 1
execute if score <attacked> variable matches 1 on vehicle store result score <hurt_time> variable run data get entity @s HurtTime

execute if score <attacked> variable matches 0 run item replace entity @s[tag=!pandamium.custom_entity.data.dying] contents with player_head[minecraft:profile={properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTdkYjE5MjNkMDNjNGVmNGU5ZjZlODcyYzVhNmFkMjU3OGIxYWZmMmIyODFmYmMzZmZhNzQ2NmM4MjVmYjkifX19"}],id:[I;1746821740,-253539768,-1502244563,-1681301798]}]
execute if score <attacked> variable matches 1 unless score <hurt_time> variable matches 1.. run item replace entity @s[tag=!pandamium.custom_entity.data.dying] contents with player_head[minecraft:profile={properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTdkYjE5MjNkMDNjNGVmNGU5ZjZlODcyYzVhNmFkMjU3OGIxYWZmMmIyODFmYmMzZmZhNzQ2NmM4MjVmYjkifX19"}],id:[I;1746821740,-253539768,-1502244563,-1681301798]}]
execute if score <attacked> variable matches 1 if score <hurt_time> variable matches 1.. run item replace entity @s contents with player_head[minecraft:profile={properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjFhOWRhZTE4NGYzMGI5ZWZkYzFlZTIyOTQ1MjQzMTljNDY0NDE4NDc4ZmE4MWRlNTJhYTFhYTY2ZTlmY2Y0MiJ9fX0="}],id:[I;1746821740,-253539768,-1502244563,-1681301798]}]

# handle being killed
scoreboard players set <killed> variable 0
execute if score <hurt_time> variable matches 9 on vehicle if data entity @s {DeathTime:1s} run scoreboard players set <killed> variable 1
execute if score <killed> variable matches 1 run data merge entity @s {transformation:{right_rotation:{axis:[0f,0f,1f],angle:-1.57079632679f}},interpolation_duration:30,start_interpolation:0}
execute if score <killed> variable matches 1 on passengers run data merge entity @s[tag=!pandamium.custom_entity.brain] {transformation:{right_rotation:{axis:[0f,1f,0f],angle:1.57079632679f},translation:[-0.375f, 0.375f, 0.1f]},interpolation_duration:10,start_interpolation:0}
execute if score <killed> variable matches 1 run tag @s add pandamium.custom_entity.data.dying
