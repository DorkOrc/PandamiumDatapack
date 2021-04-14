scoreboard players set @a in_spawn 0
scoreboard players set @a[x=-512,y=-64,z=-512,dx=1024,dy=384,dz=1024] in_spawn 1
execute in the_nether run scoreboard players set @a[x=-512,y=0,z=-512,dx=1024,dy=256,dz=1024] in_spawn 1

effect give @a[scores={in_spawn=1}] resistance 1 4 true
effect give @a[scores={in_spawn=1}] saturation 6 0 true
execute as @a[scores={in_spawn=1}] run attribute @s generic.attack_damage base set -64
effect give @a[scores={in_spawn=1}] conduit_power 1 0 true

execute as @a[scores={in_spawn=0}] run attribute @s generic.attack_damage base set 1
