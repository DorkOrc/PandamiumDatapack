execute on vehicle rotated as @s facing ^ ^ ^-1 on passengers run rotate @s ~180 ~
execute rotated as @s on passengers run rotate @s ~ ~

scoreboard players set <attacked> variable 0
execute on vehicle on attacker run scoreboard players set <attacked> variable 1
execute if score <attacked> variable matches 1 on vehicle store result score <hurt_time> variable run data get entity @s HurtTime

execute if score <attacked> variable matches 0 run item replace entity @s[tag=!pandamium.flying_eyeball.dying] contents with player_head[minecraft:profile={properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTdkYjE5MjNkMDNjNGVmNGU5ZjZlODcyYzVhNmFkMjU3OGIxYWZmMmIyODFmYmMzZmZhNzQ2NmM4MjVmYjkifX19"}],id:[I;1746821740,-253539768,-1502244563,-1681301798]}]
execute if score <attacked> variable matches 1 unless score <hurt_time> variable matches 1.. run item replace entity @s[tag=!pandamium.flying_eyeball.dying] contents with player_head[minecraft:profile={properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTdkYjE5MjNkMDNjNGVmNGU5ZjZlODcyYzVhNmFkMjU3OGIxYWZmMmIyODFmYmMzZmZhNzQ2NmM4MjVmYjkifX19"}],id:[I;1746821740,-253539768,-1502244563,-1681301798]}]
execute if score <attacked> variable matches 1 if score <hurt_time> variable matches 1.. run item replace entity @s contents with player_head[minecraft:profile={properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjFhOWRhZTE4NGYzMGI5ZWZkYzFlZTIyOTQ1MjQzMTljNDY0NDE4NDc4ZmE4MWRlNTJhYTFhYTY2ZTlmY2Y0MiJ9fX0="}],id:[I;1746821740,-253539768,-1502244563,-1681301798]}]

scoreboard players set <killed> variable 0
execute if score <hurt_time> variable matches 9 on vehicle if data entity @s {DeathTime:1s} run scoreboard players set <killed> variable 1
execute if score <killed> variable matches 1 run data merge entity @s {transformation:{right_rotation:{axis:[0f,0f,1f],angle:-1.57079632679f}},interpolation_duration:30,start_interpolation:0}
execute if score <killed> variable matches 1 on passengers run data merge entity @s {transformation:{right_rotation:{axis:[0f,1f,0f],angle:1.57079632679f},translation:[-0.375f, 0.375f, 0.1f]},interpolation_duration:10,start_interpolation:0}
execute if score <killed> variable matches 1 run tag @s add pandamium.flying_eyeball.dying

# remove if vehicle no longer exists
execute on vehicle run return 0
execute on passengers run kill
kill @s
