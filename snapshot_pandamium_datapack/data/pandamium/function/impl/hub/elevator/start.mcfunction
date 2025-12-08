# as engine
tag @s add elevator.is_moving
execute at @s run fill ~-1 ~-1 ~-1 ~1 ~5 ~1 air
execute at @s[tag=elevator.location.maproom] run fill -311 109 123 -313 109 121 barrier replace air
execute at @s[tag=elevator.location.mineshaft] run fill -197 77 204 -195 77 202 barrier replace air
execute on passengers on passengers run data modify entity @s[type=block_display] transformation.scale set value [1f,1f,1f]

execute at @s positioned ~-1.5 ~-1 ~-1.5 run tag @a[dx=2,dy=6,dz=2] add target
execute at @a[tag=target] on passengers run ride @p mount @s
tag @a remove target
