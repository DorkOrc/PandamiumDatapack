# arguments: blocks_per_tick, destination, id

place template pandamium:elevator ~-1 ~-2 ~-1

execute positioned ~-1.5 ~0.0001 ~-1.5 as @a[dx=2,dy=0,dz=2] positioned as @s align y run tp @s ~ ~ ~
execute positioned ~-1.5 ~-1.00001 ~-1.5 as @a[dx=2,dy=0,dz=2] positioned as @s align y run tp @s ~ ~1 ~

$kill @e[x=0,tag=elevator.id.$(id),tag=!elevator.button]

stopsound @a[distance=..16] master minecraft:entity.minecart.riding
playsound minecraft:entity.zombie.attack_wooden_door master @a[distance=..16] ~ ~ ~ 0.05 0
