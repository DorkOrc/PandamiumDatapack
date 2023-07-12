# as engine
execute at @s align xyz run tp ~.5 ~0.8125 ~.5
execute at @s align xyz run place template pandamium:elevator ~-1 ~-1 ~-1
execute at @s[tag=elevator.location.maproom] run fill -311 109 123 -313 109 121 barrier replace air
execute at @s[tag=elevator.location.mineshaft] run fill -197 77 204 -195 77 202 barrier replace air
tag @s remove elevator.is_moving
tag @s remove elevator.moving_down
tag @s remove elevator.moving_up
data modify entity @s Motion set value [0d,0d,0d]
execute on passengers on passengers run data modify entity @s[type=block_display] transformation.scale set value [0f,0f,0f]
execute on passengers on passengers run ride @s[type=player] dismount
execute at @s positioned ~-1.5 ~-1 ~-1.5 as @a[dx=2,dy=0,dz=2] at @s run tp @s ~ ~1 ~
